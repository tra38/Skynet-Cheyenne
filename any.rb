class Array
	def any
		p "starting possible choices: #{@possible_choices}" if @possible_choices
		if (@possible_choices == nil || @possible_choices == [])
			@possible_choices = self.dup
		end
		p "ending possible choices: #{@possible_choices}"
		@possible_choices.shuffle!.shift
	end
end