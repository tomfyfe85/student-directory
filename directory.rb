# first we print the list of students
students = [
 {name: "Dr. Hannibal Lecter", cohort: :november},
 {name:"Darth Vader",  cohort: :november},
 {name:"Nurse Ratched",  cohort: :november},
 {name:"Michael Corleone",  cohort: :november},
 {name:"Alex DeLarge", cohort: :november},
 {name:"The Wicked Witch of the West",  cohort: :november},
 {name:"The Terminator", cohort: :november},
 {name:"The Joker", cohort: :november},
 {name:"Joffrey Baratheon", cohort: :november},
 {name:"Norman Bates", cohort: :november},
]



def print_header
  puts
  puts "The students of Villains Academy"
  puts "--------------"
end

def print(names)
names.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end 
end

def print_footer(names)
    puts "Overall, we have #{names.count} evil students"
    puts
end 

def input_students
  puts
  puts "please enter the names of the students"
  puts "To finish, just hit return twice"
  #create an empty array
  students = []
  #get the first name
  name = gets.chomp 
  #while the name is not empty repeat this code
  while !name.empty? do 
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    # get another name from user
    name = gets.chomp
  end
  #return array of students
  students
end 

def interactive_menu
  students = []
  loop do
    puts "1. Input the students"
    puts "2. Show the students" 
    puts "9. Exit"
    selection = gets.chomp

    case selection 
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit 
    else 
      puts "I don't know what you mean, try again"
    end
  end
end

interactive_menu
students = input_students
print_header
print(students)
print_footer(students)

