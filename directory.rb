
@students = [ ]

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
  puts "please enter the names of the students"
  puts "To finish, just hit return twice"
  #get the first name
  name = gets.chomp 
  #while the name is not empty repeat this code
  while !name.empty? do 
    @students << {name: name, cohort: :november}
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
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end 

def show_students
  print_header
  print_student_list
  print_footer
end 

def process(selection)
  case selection 
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
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
  @students.each do |student|
  puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end 
end

def print_footer
  puts "Overall, we have #{@students.count} evil students"
  puts
end 

def save_students  #saving the data to a file
  # open the file for writing 
  file = File.open("students.csv", "w")
  # iterate of the array of students
  @students.each do |student|
  student_data = [student[:name], student[:cohort]]
  csv_line = student_data.join(",")
  file.puts csv_line
  end 
  file.close
end 

def load_students
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(',')
    @students << {name: name, cohort: cohort.to_sym}
  end
  file.close
end

interactive_menu
@students = input_students
print_menu
show_students
process
print_header
print_student_list
print_footer
save_students
load_students

