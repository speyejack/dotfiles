
def create_left_prompt [] {
	let colors = $env.themecolors.curr
	[
		" "
		(create_path_prompt $env.PWD)
		(create_prompt_git)
		(create_prompt_taskwarrior)
		(create_prompt_bubbles)
		(create_prompt_duration)
		(ansi reset)
	] | str join
}

def create_path_prompt [pwd] {
	let colors = $env.themecolors.curr

    mut home = ""
    try {
        if $nu.os-info.name == "windows" {
            $home = $env.USERPROFILE
        } else {
            $home = $env.HOME
        }
    }

    let long_dir = ([
        ($pwd | str substring 0..($home | str length) | str replace --string $home "~"),
        ($pwd | str substring ($home | str length)..)
    ] | str join)


	let dir = (shorten_path $long_dir)
    let path_color = (if (is-admin) { ansi $colors.red } else { ansi {fg: $colors.comment attr: n}})
    let separator_color = (if (is-admin) { ansi $colors.red } else { ansi {fg: $colors.cyan attr: n}})
    let path_segment = $"($path_color)($dir)"

    let path = $path_segment | str replace --all --string (char path_sep) $"($separator_color)(char path_sep)($path_color)"

	$path
}

def shorten_path [long_dir: string] {
	# Fun path shortening ideas:
	# - Replace long dirs with ..s (ex. ~/Doc../project/src)
	# - Replace middle dirs with first letter (ex. ~/D/p/src) (or 3 letters)
	# - Remove middle dirs completely (ex. ~/Documents/../src)
	# - Make sure last dir is full (ex. ~/Documents/../src)
	# - Partial truncate (ex. ~/Docu../src)

	let max_len = $env.jag.path.max-path
	let sub_len = $env.jag.path.sub-len

	if ($long_dir | str length) > $max_len {
	   let dirs = $long_dir | split row (char path_sep)

	   $dirs | first (($dirs | length) - 1) |
		each {
			|x| if ($x | str length) < $sub_len {
				$x
			} else {

				[
					($x | str substring 0..($sub_len - 3)),
					".."
				] | str join

			}
		} | append ($dirs | last) | str join (char path_sep)
	} else {
		$long_dir
	}

}

def create_prompt_duration [] {
	(format_time ([$env.CMD_DURATION_MS, "ms"] | str join | into duration))
}

def format_time [time: duration] {
	let divs = [1day, 1hr, 1min, 1sec] | each {|x| into duration}
	let mods = [0, 24, 60, 60]
	let unit = ["d","h","m","s"]

	if $time > 1sec {
		$divs |
		zip $mods |
		each {|x| if $x.1 != 0 {$time // $x.0 mod $x.1} else {$time // $x.0}} |
		zip $unit |
		filter {|x| $x.0 > 0} |
		flatten |
		prepend " " |
		str join  
	} else {
	  ""
	}
}

def create_right_prompt [] {
    # create a right prompt in magenta with green separators and am/pm underlined
	let colors = $env.themecolors.curr

	let time_color = $colors.comment
    let time_segment = ([
        (ansi reset)
        (ansi $time_color)
        (date now | date format '%R')
    ] | str join | str replace --all "([/:])" $"(ansi $colors.cyan)${1}(ansi $time_color)")

    ([$time_segment, (ansi reset)] | str join)
}

def create_prompt_color [] {

	let colors = $env.themecolors.curr
	let color = if ($env.LAST_EXIT_CODE == 0) {
		$colors.cyan
	} else {
		$colors.red
	}

}

def create_prompt_ssh [] {
	let is_ssh = $env | columns | find SSH_CONNECTION | is-empty 
	if not $is_ssh {
	   return ""
	}

	let colors = $env.themecolors.curr

	let username = (id -u -n)
	let hostname = (hostname)

	let username_color = if $username == "root" {
		$colors.red				   
	} else {
		$colors.cyan				   
	}
	let hostname_color = $colors.cyan
	let at_color = $colors.green

	[
		(ansi $username_color)
		$username
		(ansi $at_color)
		"@"
		(ansi $hostname_color)
		$hostname
	] | str join

}

def ssh_connection [] {
	
	let is_ssh = $env | columns | find SSH_CONNECTION | is-empty 
	if not $is_ssh {
	   return ""
	}

	$env.SSH_CONNECTION | parse "{in_ip} {in_port} {host_ip} {host_port}" | into record 
}

def create_prompt_taskwarrior [] {
	let colors = $env.themecolors.curr

	let out = try  {
	   let count = task +in +PENDING count | into int
	   if ($count > 0) {
	   	  " ∴"
	   } else {
	   	  ""
	   }
	} catch {
	  ""
	}
	[(ansi $colors.yellow), $out] | str join
}

def create_prompt_bubbles [] {
	let colors = $env.themecolors.curr

	let out = try {
	   let count = bubbles count | into int
	   if ($count > 0) {
	   	  " ○"
	   } else {
	   	  ""
	   }
	} catch {
	  ""
	}
	[(ansi $colors.yellow), $out] | str join
}

def create_prompt_git [] {
	let not_git_repo = (do {git rev-parse --is-inside-work-tree} | complete).exit_code != 0
	if $not_git_repo {
	   return ""
	}

	let colors = $env.themecolors.curr
	let branch_name = (git symbolic-ref --short HEAD)
	#try {
		#(git symbolic-ref --short HEAD err> /dev/null)
		#do{git name-rev --name-only HEAD err> /dev/null} | complete
	#}

	let is_dirty = (do {git diff --ignore-submodules --no-ext-diff --quiet --exit-code out+err> /dev/null} | complete).exit_code != 0

	let sym = if $branch_name == "main" or $branch_name == "master" {
	   ""
	} else {
	   ""
	} 

	let color = if $is_dirty {
		$colors.blue	
	} else {
		$colors.comment	
	}

	[" ", (ansi $color), $sym] | str join
}
# Use nushell functions to define your right and left prompt
$env.PROMPT_COMMAND = {|| create_left_prompt }
$env.PROMPT_COMMAND_RIGHT = {|| create_right_prompt }

# The prompt indicators are environmental variables that represent
# the state of the prompt
$env.PROMPT_INDICATOR = {|| [(create_prompt_color), " ❯ "] | str join }
$env.PROMPT_INDICATOR_VI_INSERT = {|| [(create_prompt_color), " ❯ "] | str join }
$env.PROMPT_INDICATOR_VI_NORMAL = {|| " ❮ " }
$env.PROMPT_MULTILINE_INDICATOR = {|| "::: " }
