class Instructor < Person
	def grade_hw(homework)
		length = homework.length
		case length
		when (100..140) then return "A"
		when (80..99) then return "B"
		when (60..79) then return "C"
		when (40..59) then return "D"
		when (0..39) then return "F"	
		end
	end
end