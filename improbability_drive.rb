####### Terminal Application #######

####### Ruby Gems #######
require 'faker'
require 'colorize'

require 'asciiart'

####### Images #######

lightspeed_image = AsciiArt.new("./images/approaching.jpg")

####### Methods #######

####### Terminal App #######

puts "Greetings. I am the Improbability Drive for the Heart of Gold. Please enter your name."
name = gets.chomp



until gameplay = false
    puts "I work out the chance of negative repurcusions arising from your decisions. #{name}, you are worried about the effects of a decision you have to make today? true or false quit?"
    paranoid = gets.chomp.downcase

if paranoid == "true"

    puts "what is the decision you are worried about?"
    decision = gets.chomp
    puts "The odds of your choice of #{decision} having unexpectedly bad consequences are..."
    odds = rand(1.5..1120) 
    puts "#{odds} to 1."

if odds > 100

    puts "The improbability factor is too high - entering light speed!".colorize(:red)
    
    puts lightspeed_image.to_ascii_art
else

    puts "You are safe to make your decision.".colorize(:red)

end

elsif paranoid == "false"

    # Faker quote from Hitchhikers Guide to the Galaxy
  puts Faker::Movies::HitchhikersGuideToTheGalaxy.quote.colorize(:red)

elsif paranoid == "quit"
    gameplay = false
    exit 


end

end