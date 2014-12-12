student_names = ["akintola", "alex b.","alex r.","alison m.","alison t.","andy k.", "andy l.", "aurora", "austin","danny","emily","ian","jack","james","kadar","kurt","matt c.","matt l.", "min","mo","rebecca","shelly","sung","trey","weston"]
instructor_names = ["jesse", "pam", "sean"]

students = []
instructors = []

require_relative './person.rb'
require_relative './student.rb'
require_relative './instructor.rb'

student_names.each { |element| students << Student.new(element) }
instructor_names.each { |element| instructors << Instructor.new(element) }

students.each do |student|
	modulo = students.index(student) % 3
	case modulo
	when 0 then instructor = instructors[0]
	when 1 then instructor = instructors[1]
	when 2 then instructor = instructors[2]	
	end
	student.greeting(instructor.name)
	instructor.greeting(student.name)
	grade = instructor.grade_hw(student.turn_in_hw)
	puts "#{student.name} got a grade of #{grade}. They were graded by #{instructor.name}"
end
=begin
# Model the Classroom!

We're going to create a real world model of the WDI class. In the starter file, we've given you a list of all the student's names, and a list of the instructor's names. We want you to:

## Part 1: Setting up our Classes
- Create a `Person` class that has an `initialize` method and a `greeting` method.
  - The greeting method should accept an argument called `name`. The method should `puts` the string `"Hey there #{name}!"` to the screen, where `name` is the argument passed into the method.
- You should be able to instantiate a new `Person` with just a name. The name of the person should be capitalized once the object is instantiated.
- Create a `Student` class and an `Instructor` class. Both these classes should inherit from the `Person` class.
- The `Student` class should have a method called `turn_in_hw`. The output (return value) of this method should be a string somewhere between 0 and 140 characters. The value of the characters is irrelevant.
- The `Instructor` class should have a method `grade_hw`. This should accept a string named `homework` as an argument, and should return a letter grade based on the length of the string passed into it.
  - A string between 100-140 characters will return an "A".
  - A string between 80-99 characters will return an "B".
  - A string between 60-79 characters will return an "C".
  - A string between 40-59 characters will return an "D".
  - A string between 0-39 characters will return an "F".

## Part 2: Instantiating objects
- Loop through the list of `student_names` and instantiate a `Student` object for each name. Add this object to an array called `students`.
- Loop through the list of `instructor_names` and instantiate an `Instructor` object for each name. Add this object to an array called `instructors`.

## Part 3: Grading homeworks
- Loop through the list of student objects, and have them turn in their homeworks to the instructors. Each instructor should grade as close to the same number of homeworks as possible (in this case 2 instructors will have 8 students, and 1 will have 9).
- Before the students "turn in" their homework, the student and instructor should greet each other using their respective `greet` methods.
- The students should "turn in" their homework to the instructors using the `turn_in_hw` method. Instructors should accept the output of the `turn_in_hw method and `"grade" it using the `grade_hw` method.
- Once each homework is graded, output the name of the student whose homework it is, along with their grade like so:
"#{student_name} got a grade of #{grade}. They were graded by #{instructor_name}"

## Bonus: Store and average multiple grades!
- Once we're able to grade one homework, let's try grading multiple homeworks and then storing and averaging the student's grade overall.
- Create a new attribute called `@homeworks` on the `Student` class. This attribute will be an array that holds multiple homework assignments.
- On initialization, the student object should create 5 different homework assignments (again, these are strings of characters between 0-140 characters long) and insert them into the `@homeworks` array.
- Alter the `grade_hw` method on the `Instructor` class to be able to grade multiple homeworks at a time and return a letter grade based on the average number of characters per homework assignment.
- Save the overall homework grade on each `Student` object in a new attribute named `@grade`. Then instead of printing the grade of each homework assignment to the screen, print the student's overall grade.
=end

