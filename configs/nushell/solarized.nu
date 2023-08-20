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

export-env {
    let base = {
		base03   : "#002b36" # Background
		base02   : "#073642" # Background highlights
		base01   : "#586e75" # Comments/secondary content
		base00   : "#657b83"
		base0    : "#839496" # body text/default code/primary content
		base1    : "#93a1a1" # optional emphasized content           
		base2    : "#eee8d5" 
		base3    : "#fdf6e3"

		yellow   : "#b58900"
		orange   : "#cb4b16"
		red      : "#dc322f"
		magenta  : "#d33682"
		violet   : "#6c71c4"
		blue     : "#268bd2"
		cyan     : "#2aa198"
		green    : "#859900"
	}

	let light = {
		backg   : $base.base3
		backhl  : $base.base2
		comment : $base.base1
		body    : $base.base00
		emph    : $base.base01

		yellow   : $base.yellow
		orange   : $base.orange   
		red      : $base.red      
		magenta  : $base.magenta  
		violet   : $base.violet   
		blue     : $base.blue     
		cyan     : $base.cyan     
		green    : $base.green    
	}


	let dark = {
		backg   : $base.base03 # Background
		backhl  : $base.base02 # Background highlights
		comment : $base.base01 # Comments/second cotent
		body    : $base.base0  # Body text/default code/primary content
		emph    : $base.base1  # Optional emphasized content           

		yellow   : $base.yellow
		orange   : $base.orange   
		red      : $base.red      
		magenta  : $base.magenta  
		violet   : $base.violet   
		blue     : $base.blue     
		cyan     : $base.cyan     
		green    : $base.green    
	}
	
	$env.themecolors = {
	    base: $base
	    dark: $dark
	    light: $light
		curr: $dark
	}
}
