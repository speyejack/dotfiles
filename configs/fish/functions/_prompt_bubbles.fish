function _prompt_bubbles

	if type -q bubbles
		set --local bubbles_color (_pure_set_color brgreen)
		set --local bubbles_out (bubbles count)
		test "$bubbles_out" -gt 0; and echo "$bubbles_color○"
	end
end