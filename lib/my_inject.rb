require 'debugger'

class Array

	def my_inject(accumulator = strip_first_element_of_caller)
		return accumulator if self.length == 0
		accumulator = my_inject(accumulator, yield(accumulator, strip_first_element_of_caller))
	end

	def strip_first_element_of_caller
		self.shift
	end

end


