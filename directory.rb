# first we print the list of students
students = [
 
 "Dr. Hannibal Lecter",
 "Darth Vader",
 "Nurse Ratched",
 "Michael Corleone",
 "Alex DeLarge",
 "The Wicked Witch of the West",
 "The Terminator",
 "Freddy Krueger",
 "The Joker",
 "Joffrey Baratheon",
 "Norman Bates",
]
puts "The students of Villains Acedemy"
puts "--------------"
students.each do |student|
  puts student
end
# finally we print the total no. of students
puts "Overall, we have #{students.count} great students"

