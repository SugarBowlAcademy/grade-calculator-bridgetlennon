,=begin
in this project you will be creating a program that tells people what grade they will need on a test to get a particular overall grade in the class. Look at the pseudocode below as an example of how the the UI is and how the calculation works
=end

#Example 1

#My current overall grade is 80/100
# my next test is worth 20 points
# I want to know what grade I will need on the test in order to keep a C in the class
# I know that the overall points in the class will be 120
# and that 120*.7 is 84 so I will need a 4/20, or 20% on the next test to maintain a 70% in the class.

=begin
desired points = .9 x total + testworth
points on test = desired points - earned points
grade on test = earned points % testworth
=end

#Example 2

# my current grade is 45/50, a 90%
# I want to know how to move to a 95% if my next test is worth 25 points
# I know that my overall grade will be out of 75 points, and .95 of 75 is 71.25
# so the person will need 71.25-45=26.5 points on the next test or 106% to get a 95%

puts "What is your grade in this class out of 100 in a percentage?"
overallgrade = gets.to_f
overallpercent= overallgrade*100

puts "What is the total number of points you can score in this class?"
totalpoints = gets.to_f

gradepoints = totalpoints*overallpercent

puts "How many points is your next test worth/What is it out of?"
testpoints= gets.to_f

puts "What percentage grade do you want in this class"
goalgrade= gets.to_f

new_class_total= testpoints + overallgrade

goalgrade= goalgrade/100 * new_class_total

goalgrade= goalgrade - gradepoints / testpoints

puts "The grade you need on this test is #{goalgrade}"
