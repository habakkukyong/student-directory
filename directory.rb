def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november, hobbies: [:source_closing, :patent_trolling, :predatory_litigation], country: :seastead, height: :excellent }
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end
students = input_students
def print_header
  puts "The students of Villains Academy".center(80)
  puts "-------------".center(80)
end
def print(students)
  count_var = 0
  while count_var < students.length
    index = count_var
    puts "#{index}. #{students[index][:name]} (#{students[index][:cohort]} cohort; hobbies: #{students[index][:hobbies].map{ |e| e.to_s}.join(", ")}; country: #{students[index][:country]}; height: #{students[index][:height]})".center(80)
    count_var += 1
  end
end
def print_footer(names)
  puts "Overall we have #{names.count} great students".center(80)
end
print_header
print(students)
print_footer(students)
