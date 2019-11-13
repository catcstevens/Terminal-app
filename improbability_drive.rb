####### Terminal Application #######

####### Ruby Gems #######
require 'faker'
require 'colorize'
require 'catpix'
require 'gif'

####### Methods #######

####### Terminal App #######

puts "Greetings. I am the Improbability Drive for the Heart of Gold. Please enter your name."
name = gets.chomp
puts "I work out the chance of negative repurcusions arising from your decisions. #{name}, you are worried about the effects of a decision you have to make today? true or false?"
paranoid = gets.chomp.downcase


if paranoid == "true"

    puts "what is the decision you are worried about?"
    decision = gets.chomp
    puts "The odds of your choice of #{decision} having unexpectedly bad consequences are..."
    odds = rand(1.5..1120) 
    puts "#{odds} to 1."

if odds > 1000

    puts "The improbability factor is too high - entering light speed!".colorize(:red)

else

    puts "You are safe to make your decision.".colorize(:yellow)

end

else paranoid == "false"

    # Faker quote from Hitchhikers Guide to the Galaxy
  puts Faker::Movies::HitchhikersGuideToTheGalaxy.quote.colorize(:red)



end

# Catpix::print_image " ",
#   :limit_x => 1.0,
#   :limit_y => 0,
#   :center_x => true,
#   :center_y => true,
#   :bg => "white",
#   :bg_fill => true,
#   :resolution => low