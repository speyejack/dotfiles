
export def solarized_theme [theme_type: string] {

let is_dark = $theme_type == "dark"

# Comments for dark
let base03   = "#002b36" # Background
let base02   = "#073642" # Background highlights
let base01   = "#586e75" # Comments/secondary content
let base00   = "#657b83"
let base0    = "#839496" # body text/default code/primary content
let base1    = "#93a1a1" # optional emphasized content
let base2    = "#eee8d5" 
let base3    = "#fdf6e3"

let yellow   = "#b58900"
let orange   = "#cb4b16"
let red      = "#dc322f"
let magenta  = "#d33682"
let violet   = "#6c71c4"
let blue     = "#268bd2"
let cyan     = "#2aa198"
let green    = "#859900"

let backg   = if $is_dark {$base03} else {$base3}
let backhl  = if $is_dark {$base02} else {$base2}
let comment = if $is_dark {$base01} else {$base1}
let body    = if $is_dark {$base0} else {$base00}
let emph    = if $is_dark {$base1} else {$base01}

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
