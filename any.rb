class Array
	def any
		if (@possible_choices == nil || @possible_choices == [])
			@possible_choices = self.dup
		end
		@possible_choices.shuffle!.shift
	end
end