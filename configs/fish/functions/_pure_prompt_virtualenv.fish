function _pure_prompt_virtualenv --description "Display virtualenv directory"
	set --local virtualenv
	set --local virtualenv_color

    if test -n "$VIRTUAL_ENV"
        set virtualenv (basename "$VIRTUAL_ENV")
        set virtualenv_color (_pure_set_color $pure_color_virtualenv)
    else if test -n "$CONDA_DEFAULT_ENV"
        set virtualenv (basename "$CONDA_DEFAULT_ENV")
        set virtualenv_color (_pure_set_color $pure_color_virtualenv)
    end

	echo (string trim "$virtualenv_color$virtualenv")
end
