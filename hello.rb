print "Enter your name: "
name = gets.chomp

print "Enter your age: "
age = gets.chomp.to_i

p "Your name is #{name.capitalize} and your age is #{age + 5}."
