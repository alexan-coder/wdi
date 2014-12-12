require "pg"

conn = PG.connect(:hostaddr => "127.0.0.1", :port => 5432, :dbname => "wdi") # 127.0.0.1 local computer ip address

puts "name?"
name = gets.chomp

puts "age?"
age = gets.chomp

# result = conn.exec("INSERT INTO students (name, age) VALUES ('#{name}', #{age});")

conn.prepare("student_insert_query", "INSERT INTO students (name, age) VALUES ($1, $2)")

conn.exec_prepared("student_insert_query", [name, age])

result = conn.exec("SELECT * FROM students;")

result.each do |student| # looping through "result"
	puts student
end

# puts result.inspect