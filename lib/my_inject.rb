require 'debugger'

class Array

	def my_inject(accumulator = strip_first_element_of_caller, &block)
		return accumulator if self.length == 0
		yield accumulator, my_inject(strip_first_element_of_caller, &block)
	end

	def strip_first_element_of_caller
		self.shift
	end

end
