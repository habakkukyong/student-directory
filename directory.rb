#=begin
class Student
  def initialize(name, id, cohort="November", hobbies=["Source-closing", "patent-trolling", "predatory litigation"], country="Nearest Seastead")
    @name = name
    @id = id
    @cohort = cohort
    @hobbies = hobbies.length > 1 ? hobbies[0..-2].join(", ") + " and " + hobbies.last : hobbies.first
    @country = country
  end
  attr_accessor :cohort
  def print_deets
    puts "#{@id}. Name:    #{@name}\n   Cohort:  #{@cohort}\n   Hobbies: #{@hobbies}\n   Country: #{@country}"
  end
end

def print_header
  puts "The students of Villains Academy".center(80)
  puts "-------------".center(80)
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  students_num = 1
  while !name.empty? do
    student = Student.new(name, students_num)
    puts "Cohort?"
    cohort = gets.chomp
    student.cohort = cohort if !cohort.empty?
    students << student
    if students.length == 1
      puts "Now we have #{students_num} student";
    else
      puts "Now we have #{students_num} students"
    end
    name = gets.chomp
    students_num += 1
  end
  students
end

def print_details(students)
  count_var = 0
  while count_var < students.length
    index = count_var
    students[count_var].print_deets
    count_var += 1
  end
end

def print_footer(names, cohort)
  puts "Overall we have #{names.count} great students in the #{cohort} cohort".center(80)
end

students = input_students
puts "Choose a cohort to print"
cohort = gets.chomp
students_in_cohort = []
students.each { |student| students_in_cohort << student if student.cohort == cohort }
print_header
print_details(students_in_cohort)
print_footer(students_in_cohort, cohort)
#=end

=begin
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
=end
