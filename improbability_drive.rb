####### Terminal Application #######

####### Ruby Gems #######

#require 'colourize'

####### Methods #######

####### Terminal App #######

puts "Greetings. I am the Improbability Drive for the Heart of Gold. Please enter your name."
name = gets.chomp
puts "I work out the chance of negative repurcusions arising from your decisions. #{name}, you are worried about the effects of a decision you have to make today? true or false?"
paranoid = gets.chomp.downcase


if paranoid == "true"
    puts "what is the decision you are worried about?"
    decision = gets.chomp

else paranoid == "false"
    puts "There is no growth without difficult decisions!"

end
