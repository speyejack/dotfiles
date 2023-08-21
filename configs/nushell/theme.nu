export def create_theme [] {
	let base = $env.themecolors.curr

	let yellow   = $base.yellow
	let orange   = $base.orange
	let red      = $base.red
	let magenta  = $base.magenta
	let violet   = $base.violet
	let blue     = $base.blue
	let cyan     = $base.cyan
	let green    = $base.green

	let backg   = $base.backg
	let backhl  = $base.backhl
	let comment = $base.comment
	let body    = $base.body
	let emph    = $base.emph

	let theme = {

		separator: $comment
		leading_trailing_space_bg: $body
		header: $yellow
		date: $body
		filesize: $body
		row_index: $emph
		bool: $blue
		int: $blue
		duration: $body
		range: $body
		float: $body
		string: $body
		nothing: $body
		binary: $body
		cellpath: $body
		hints: $comment

		# shape_garbage: { fg: $body7 bg: $body8 attr: b} # base16 white on red
		# but i like the regular white on red for parse errors
		shape_garbage: { fg: $red bg: $backhl attr: b}
		shape_bool: $blue
		shape_int: { fg: $blue attr: b}
		shape_float: { fg: $body attr: b}
		shape_range: { fg: $body attr: b}
		shape_internalcall: { fg: $blue attr: b}
		shape_external: $blue
		shape_externalarg: { fg: $body}
		shape_literal: $body
		shape_operator: $green
		shape_signature: { fg: $body attr: b}
		shape_string: $body
		shape_filepath: $yellow
		shape_globpattern: { fg: $yellow attr: b}
		shape_variable: $magenta
		shape_flag: { fg: $emph attr: b}
		shape_custom: {attr: b}
	}

	return $theme;
}

export def change_theme [theme_type: string] {
	let is_dark = $theme_type == "dark"

	$env.themecolors.curr = if $is_dark {$env.themecolors.dark} else {$env.themecolors.light}
	$env.config.color_config = (create_theme)
}

