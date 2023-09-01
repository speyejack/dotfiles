# Nushell Config File
use ~/.config/nushell/theme.nu [create_theme change_theme]

# External completer example
let carapace_completer = {|spans|
  carapace $spans.0 nushell $spans | from json
}

# The default config record. This is where much of your global configuration is setup.

def create_config [] {
{
	ls: {
		use_ls_colors: true # use the LS_COLORS environment variable to colorize output
		clickable_links: true # enable or disable clickable links. Your terminal has to support links.
	}
	rm: {
		always_trash: false # always act as if -t was given. Can be overridden with -p
	}
	cd: {
		abbreviations: true # allows `cd s/o/f` to expand to `cd some/other/folder`
	}
	table: {
		mode: rounded # basic, compact, compact_double, light, thin, with_love, rounded, reinforced, heavy, none, other
		index_mode: always # "always" show indexes, "never" show indexes, "auto" = show indexes when a table has "index" column
		trim: {
		methodology: wrapping # wrapping or truncating
		wrapping_try_keep_words: true # A strategy used by the 'wrapping' methodology
		truncating_suffix: "..." # A suffix used by the 'truncating' methodology
		}
	}

	explore: {
		help_banner: false
		exit_esc: true

		command_bar_text: $env.themecolors.curr.body
		# command_bar: {fg: '#C4C9C6' bg: '#223311' }

		status_bar_background: {fg: $env.themecolors.curr.backg bg:$env.themecolors.curr.emph  }
		# status_bar_text: {fg: '#C4C9C6' bg: '#223311' }

		highlight: {bg: 'yellow' fg: 'black' }

		status: {
		# warn: {bg: 'yellow', fg: 'blue'}
		# error: {bg: 'yellow', fg: 'blue'}
		# info: {bg: 'yellow', fg: 'blue'}
		}

		try: {
		# border_color: 'red'
		# highlighted_color: 'blue'

		# reactive: false
		}

		table: {
		split_line: $env.themecolors.curr.backg

		cursor: true

		line_index: true
		line_shift: true
		line_head_top: true
		line_head_bottom: true

		show_head: true
		show_index: true

		# selected_cell: {fg: 'white', bg: '#777777'}
		# selected_row: {fg: 'yellow', bg: '#C1C2A3'}
		# selected_column: blue

		# padding_column_right: 2
		# padding_column_left: 2

		# padding_index_left: 2
		# padding_index_right: 1
		}

		config: {
		cursor_color: {bg: 'yellow' fg: 'black' }

		# border_color: white
		# list_color: green
		}
	}

	history: {
		max_size: 10000 # Session has to be reloaded for this to take effect
		sync_on_enter: true # Enable to share history between multiple sessions, else you have to close the session to write history to file
		file_format: "sqlite" # "sqlite" or "plaintext"
	}
	completions: {
		case_sensitive: false # set to true to enable case-sensitive completions
		quick: true  # set this to false to prevent auto-selecting completions when only one remains
		partial: true  # set this to false to prevent partial filling of the prompt
		algorithm: "fuzzy"  # prefix or fuzzy
		external: {
		enable: true # set to false to prevent nushell looking into $env.PATH to find more suggestions, `false` recommended for WSL users as this look up my be very slow
		max_results: 100 # setting it lower can improve completion performance at the cost of omitting some options
		completer: $carapace_completer # check 'carapace_completer' above as an example
		}
	}
	filesize: {
		metric: true # true => KB, MB, GB (ISO standard), false => KiB, MiB, GiB (Windows standard)
		format: "auto" # b, kb, kib, mb, mib, gb, gib, tb, tib, pb, pib, eb, eib, zb, zib, auto
	}
	cursor_shape: {
		emacs: line # block, underscore, line (line is the default)
		vi_insert: block # block, underscore, line (block is the default)
		vi_normal: underscore # block, underscore, line  (underscore is the default)
	}
	color_config: (create_theme)   # if you want a light theme, replace `$dark_theme` to `$light_theme`
	use_grid_icons: true
	footer_mode: "25" # always, never, number_of_rows, auto
	float_precision: 2 # the precision for displaying floats in tables
	# buffer_editor: "emacs" # command that will be used to edit the current line buffer with ctrl+o, if unset fallback to $env.EDITOR and $env.VISUAL
	use_ansi_coloring: true
	edit_mode: vi # emacs, vi
	shell_integration: true # enables terminal markers and a workaround to arrow keys stop working issue
	# true or false to enable or disable the welcome banner at startup
	show_banner: false
	render_right_prompt_on_last_line: false # true or false to enable or disable right prompt to be rendered on last line of the prompt.

	hooks: {
		pre_prompt: [{
		null  # replace with source code to run before the prompt is shown
		}]
		pre_execution: [{
		null  # replace with source code to run before the repl input is run
		}]
		env_change: {
		PWD: [{|before, after|
			null  # replace with source code to run if the PWD environment is different since the last repl input
		}]
		}
		display_output: {
		if (term size).columns >= 100 { table -e } else { table }
		}
	}
	menus: [
		# Configuration for default nushell menus
		# Note the lack of source parameter
		{
			name: completion_menu
			only_buffer_difference: false
			marker: "| "
			type: {
				layout: columnar
				columns: 4
				col_width: 20   # Optional value. If missing all the screen width is used to calculate column width
				col_padding: 2
			}
			style: $env.jag.menu-style
		}
		{
			name: history_menu
			only_buffer_difference: true
			marker: "? "
			type: {
				layout: list
				page_size: 10
			}
			style: $env.jag.menu-style
		}
		{
			name: help_menu
			only_buffer_difference: true
			marker: "? "
			type: {
				layout: description
				columns: 4
				col_width: 20   # Optional value. If missing all the screen width is used to calculate column width
				col_padding: 2
				selection_rows: 4
				description_rows: 10
			}
			style: $env.jag.menu-style
		}
		# Example of extra menus created using a nushell source
		# Use the source field to create a list of records that populates
		# the menu
		{
			name: commands_menu
			only_buffer_difference: false
			marker: "# "
			type: {
				layout: columnar
				columns: 4
				col_width: 20
				col_padding: 2
			}
			style: $env.jag.menu-style
			source: { |buffer, position|
				$nu.scope.commands
				| where name =~ $buffer
				| each { |it| {value: $it.name description: $it.usage} }
			}
		}
		{
			name: vars_menu
			only_buffer_difference: true
			marker: "# "
			type: {
				layout: list
				page_size: 10
			}
			style: $env.jag.menu-style
			source: { |buffer, position|
				$nu.scope.vars
				| where name =~ $buffer
				| sort-by name
				| each { |it| {value: $it.name description: $it.type} }
			}
		}
		{
			name: commands_with_description
			only_buffer_difference: true
			marker: "# "
			type: {
				layout: description
				columns: 4
				col_width: 20
				col_padding: 2
				selection_rows: 4
				description_rows: 10
			}
			style: {
				text: green
				selected_text: green_reverse
				description_text: yellow
			}
			source: { |buffer, position|
				$nu.scope.commands
				| where name =~ $buffer
				| each { |it| {value: $it.name description: $it.usage} }
			}
		}
	]
	keybindings: [
		{
		name: completion_menu
		modifier: none
		keycode: tab
		mode: [emacs vi_normal vi_insert]
		event: {
			until: [
			{ send: menu name: completion_menu }
			{ send: menunext }
			]
		}
		}
		{
		name: completion_previous
		modifier: shift
		keycode: backtab
		mode: [emacs, vi_normal, vi_insert] # Note: You can add the same keybinding to all modes by using a list
		event: { send: menuprevious }
		}
		{
		name: history_menu
		modifier: control
		keycode: char_r
		mode: emacs
		event: { send: menu name: history_menu }
		}
		{
		name: next_page
		modifier: control
		keycode: char_x
		mode: emacs
		event: { send: menupagenext }
		}
		{
		name: undo_or_previous_page
		modifier: control
		keycode: char_z
		mode: emacs
		event: {
			until: [
			{ send: menupageprevious }
			{ edit: undo }
			]
		}
		}
		{
		name: yank
		modifier: control
		keycode: char_y
		mode: emacs
		event: {
			until: [
			{edit: pastecutbufferafter}
			]
		}
		}
		{
		name: unix-line-discard
		modifier: control
		keycode: char_u
		mode: [emacs, vi_normal, vi_insert]
		event: {
			until: [
			{edit: cutfromlinestart}
			]
		}
		}
		{
		name: kill-line
		modifier: control
		keycode: char_k
		mode: [emacs, vi_normal, vi_insert]
		event: {
			until: [
			{edit: cuttolineend}
			]
		}
		}
		# Keybindings used to trigger the user defined menus
		{
		name: commands_menu
		modifier: control
		keycode: char_t
		mode: [emacs, vi_normal, vi_insert]
		event: { send: menu name: commands_menu }
		}
		{
		name: vars_menu
		modifier: alt
		keycode: char_o
		mode: [emacs, vi_normal, vi_insert]
		event: { send: menu name: vars_menu }
		}
		{
		name: commands_with_description
		modifier: control
		keycode: char_s
		mode: [emacs, vi_normal, vi_insert]
		event: { send: menu name: commands_with_description }
		}
	]
	}

}

$env.config = (create_config)
# Theme setup
def-env tdark [] {
	alacritty msg config colors.primary.foreground="\"#839496\"";
	alacritty msg config colors.primary.background="\"#002b36\"";
	(change_theme "dark")
	$env.config = (create_config)
}

def-env tlight [] {
	alacritty msg config colors.primary.foreground="\"#586e75\"";
	alacritty msg config colors.primary.background="\"#fdf6e3\"";
	(change_theme "light")
	$env.config = (create_config)
}

ssh-agent -c
    | lines
    | first 2
    | parse "setenv {name} {value};"
    | transpose -r
    | into record
    | load-env

alias in = task add +in
def tickle [deadline: string, ...extra: string] {
	in +tickle wait:$deadline $extra
}

def-env cl [loc: string] {
	cd $loc
	ls
}


alias tick = tickle
alias think = tickle +1d
alias today = task add +today due:8am
alias todo = task add +today +optional until:8am
alias soon = task add +soon
alias someday = task add +someday
alias overhead = task add +overhead +soon

		