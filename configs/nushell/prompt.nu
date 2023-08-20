
def create_left_prompt [] {
	let colors = $env.themecolors.curr
	[
		" "
		(create_path_prompt $env.PWD)
		(ansi $colors.red)
		(create_time_prompt ($env.CMD_DURATION_MS | into int))
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

	let max_len = $env.jag.path.max-path
	let sub_len = $env.jag.path.sub-len

	if ($long_dir | str length) > $max_len {
		$long_dir |
		split row (char path_sep) |
		each {
			|x| if ($x | str length) < $sub_len {
				$x
			} else {

				[
					($x | str substring 0..($sub_len - 3)),
					".."
				] | str join

			}
		} | str join (char path_sep)
	} else {
		$long_dir
	}

}

def create_time_prompt [time_ms: int] {
	let divs = [86400000, 3600000,60000,1000]
	let mods = [10000,24,60,60]
	let unit = ["d","h","m","s"]

	if $time_ms > 1000 {
		$divs |
		zip $mods |
		each {|x| $time_ms // $x.0 mod $x.1} |
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

    ([$time_segment] | str join)
}

def create_prompt_color [] {

	let colors = $env.themecolors.curr
	let color = if ($env.LAST_EXIT_CODE == 0) {
		$colors.cyan
	} else {
		$colors.red
	}

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
