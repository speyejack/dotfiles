# Nushell Environment Config File
#
# version = 0.82.1

def create_left_prompt [] {
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
        ($env.PWD | str substring 0..($home | str length) | str replace --string $home "~"),
        ($env.PWD | str substring ($home | str length)..)
    ] | str join)


	let dir = (shorten_path $long_dir)
    let path_color = (if (is-admin) { ansi $colors.red } else { ansi {fg: $colors.comment attr: n}})
    let separator_color = (if (is-admin) { ansi $colors.red } else { ansi {fg: $colors.cyan attr: n}})
    let path_segment = $"($path_color)($dir)"

    $path_segment | str replace --all --string (char path_sep) $"($separator_color)(char path_sep)($path_color)"
}

def shorten_path [long_dir] {
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

# Specifies how environment variables are:
# - converted from a string to a value on Nushell startup (from_string)
# - converted from a value back to a string when running external commands (to_string)
# Note: The conversions happen *after* config.nu is loaded
$env.ENV_CONVERSIONS = {
    "PATH": {
        from_string: { |s| $s | split row (char esep) | path expand --no-symlink }
        to_string: { |v| $v | path expand --no-symlink | str join (char esep) }
    }
    "Path": {
        from_string: { |s| $s | split row (char esep) | path expand --no-symlink }
        to_string: { |v| $v | path expand --no-symlink | str join (char esep) }
    }
}

# Directories to search for scripts when calling source or use
$env.NU_LIB_DIRS = [
    # ($nu.default-config-dir | path join 'scripts') # add <nushell-config-dir>/scripts
]

# Directories to search for plugin binaries when calling register
$env.NU_PLUGIN_DIRS = [
    # ($nu.default-config-dir | path join 'plugins') # add <nushell-config-dir>/plugins
]

# To add entries to PATH (on Windows you might use Path), you can use the following pattern:
# $env.PATH = ($env.PATH | split row (char esep) | prepend '/some/path')
$env.jag = {
	path: {
		max-path: 20
		sub-len: 7
	}
}
