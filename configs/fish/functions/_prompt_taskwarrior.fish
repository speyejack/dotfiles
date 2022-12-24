function _prompt_taskwarrior

	if type -q task
		set --local taskwarrior_color (_pure_set_color brgreen)
		set --local taskwarrior_out (task +in +PENDING count)
		test "$taskwarrior_out" -gt 0; and echo "$taskwarrior_color∴"
	end
end
