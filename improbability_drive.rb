####### Terminal Application #######

####### Ruby Gems #######
require 'faker'
require 'colorize'
require 'artii'
require 'asciiart'

####### Images #######

lightspeed_image = AsciiArt.new("./images/approaching.jpg")

####### Arrays #######

#  quotes = [
#     {quote: "It is a mistake to think you can solve any major problems just with potatoes."},
#     {quote: "Shee, you guys are so unhip it’s a wonder your bums don’t fall off."},
#     {quote: "Funny,” he intoned funereally, “how just when you think life can’t possibly get any worse it suddenly does."},
#     {quote: "A common mistake that people make when trying to design something completely foolproof is to underestimate the ingenuity of complete fools."},
#     {quote: "I'd far rather be happy than right any day."},
#     {quote: "We demand rigidly defined areas of doubt and uncertainty!"}
# ]

# ####### Methods #######

####### terminal App #######
a = Artii::Base.new :font => 'big'
puts a.asciify("GREETINGS").colorize(:red)
puts "I am the Improbability Drive for the Heart of Gold."
puts "Please enter your name."
name = gets.chomp


until gameplay = false
    
    puts "I work out the chance of negative repurcusions arising from your decisions."
    puts "#{name}, you are worried about the effects of a decision you have to make today? 
    puts true, false or quit?"
    paranoid = gets.chomp.downcase

if paranoid == "true"

    puts "what is the decision you are worried about?"
    decision = gets.chomp
    puts "The odds of your choice of #{decision} having unexpectedly bad consequences are..."
    odds = rand(1.5..1120) 
    puts "#{odds} to 1."

if odds > 1000

    puts "The improbability factor is too high".colorize(:red)
    puts "entering light speed!".colorize(:red)
    
    puts lightspeed_image.to_ascii_art
else
    a = Artii::Base.new :font => 'big'
    puts a.asciify("DO IT").colorize(:red)
    #puts artii "You are safe to make your decision."
    puts

end

elsif paranoid == "false"
 
    # Faker quote from Hitchhikers Guide to the Galaxy
     puts Faker::Movies::HitchhikersGuideToTheGalaxy.quote.colorize(:red)

elsif paranoid == "quit"
    gameplay = false
    exit 
end

end
#`say "Don't Panic"`
