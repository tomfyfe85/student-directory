
@students = []

# students = [
#  {name: "Dr. Hannibal Lecter", cohort: :november},
#  {name:"Darth Vader",  cohort: :november},
#  {name:"Nurse Ratched",  cohort: :november},
#  {name:"Michael Corleone",  cohort: :november},
#  {name:"Alex DeLarge", cohort: :november},
#  {name:"The Wicked Witch of the West",  cohort: :november},
#  {name:"The Terminator", cohort: :november},
#  {name:"The Joker", cohort: :november},
#  {name:"Joffrey Baratheon", cohort: :november},
#  {name:"Norman Bates", cohort: :november},
# ]
def input_students
  puts
  puts "please enter the names of the students"
  puts "To finish, just hit return twice"
  #get the first name
  name = gets.chomp 
  #while the name is not empty repeat this code
  while !name.empty? do 
    students << {name: name, cohort: :november}
    puts "Now we have #{@students.count} students"
    # get another name from user
    name = gets.chomp
  end
end 

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end 

def print_menu
  puts "1. Input the students"
  puts "2. Show the students" 
  puts "9. Exit"
end 

def show_students
  print_header
  print(students)
  print_footer(students)
end 

def process(selection)
  case selection 
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit
    else 
    puts "I don't know what you mean, try again"
  end
end
  
def print_header
  puts
  puts "The students of Villains Academy"
  puts "--------------"
end

def print_student_list
  @student.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end 
end

def print_footer
  puts "Overall, we have #{@students.count} evil students"
  puts
end 


interactive_menu
students = input_students
print_header
print(@students)
print_footer(@students)

