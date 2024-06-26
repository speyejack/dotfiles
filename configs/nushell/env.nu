# Nushell Environment Config File
#
# version = 0.82.1
source ~/.config/nushell/prompt.nu
source ~/.config/nushell/theme_vals.nu

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
    ($nu.default-config-dir | path join 'scripts') # add <nushell-config-dir>/scripts
]

# Directories to search for plugin binaries when calling register
$env.NU_PLUGIN_DIRS = [
    # ($nu.default-config-dir | path join 'plugins') # add <nushell-config-dir>/plugins
]

# To add entries to PATH (on Windows you might use Path), you can use the following pattern:
$env.PATH = ($env.PATH | split row (char esep) | prepend '~/.cargo/bin' | prepend '~/.local/bin' | prepend '~/.bin/local' )
$env.LS_COLORS = $env.themecolors.curr.ls_colors
$env.EDITOR = vim
$env.TASK_THEME = $env.themecolors.curr.task_colors
#$env.SSH_AUTH_SOCK = ($env.XDG_RUNTIME_DIR | append '/ssh-agent.socket' | str join)

$env.jag = {
	path: {
		max-path: 20
		sub-len: 7
	}
	menu-style: {
		text: $env.themecolors.curr.comment
		selected_text: $env.themecolors.curr.emph
		description_text: $env.themecolors.curr.yellow
	}
}

