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