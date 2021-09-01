# a called to `_pure_prompt_new_line` is triggered by an event
function fish_prompt
    set --local exit_code $status  # save previous exit code

	set --local prompt_beginning (_pure_prompt_beginning) # init prompt context (clear current line, etc.)
	set --local prompt_rows (_pure_print_prompt_rows) # manage default vs. compact prompt
	set --local prompt_iterm2_marker (_pure_place_iterm2_prompt_mark) # place iTerm shell integration mark
	set --local prompt_prompt (_pure_prompt $exit_code) # print prompt
	set --local prompt_ending (_pure_prompt_ending) # reset colors and end prompt

	echo -e -n $prompt_beginning
	echo -e -n (\
        _pure_print_prompt \
        $prompt_rows \
        $prompt_iterm2_marker \
        $prompt_prompt \
	)
	echo -e -n $prompt_ending

	set _pure_fresh_session false
end
