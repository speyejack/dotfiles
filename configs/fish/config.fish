if status is-interactive
	set -x SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket

	set pure_color_system_time '#839496'
	set pure_color_danger '#dc322f'
	set pure_color_dark '#073642'
	set pure_color_info '#2aa198'
	set pure_color_light '#eee8d5'
	set pure_color_mute '#586e75'
	set pure_color_primary '#268bd2'
	set pure_color_success '#d33682'
	set pure_color_warning '#b58900'

	set pure_separate_prompt_on_error false
	set pure_enable_single_line_prompt true

	# set async_prompt_functions _pure_prompt_git

	function _pure_parse_directory
		echo (prompt_pwd)
	end

	function fish_right_prompt
		_pure_set_color $pure_color_system_time
		date "+%H:%M"
	end
end

alias in='task add +in'

function tickle
		 set -l deadline $argv[1]
		 in +tickle wait:$deadline schedule:$deadline+1d $argv[2..]
end
alias tick=tickle
alias think='tickle +1d'
alias today='task add +today due:8am'
alias todo='task add +today +optional until:8am'
alias soon='task add +soon'
alias someday='task add +someday'
alias overhead='task add +overhead +soon'
		
