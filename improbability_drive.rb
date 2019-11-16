####### Terminal Application #######

####### Ruby Gems #######
require 'faker'
require 'colorize'
require 'artii'
require 'tty-prompt'

####### Arrays #######

#Array for quotes from HitchhikersGuideToTheGalaxy
quotes = [
     "'It is a mistake to think you can solve any major problems just with potatoes.' ",
     "'Shee, you guys are so unhip it’s a wonder your bums don’t fall off.' ",
     "'Funny,” he intoned funereally, “how just when you think life can’t possibly get any worse it suddenly does.' ",
     "'A common mistake that people make when trying to design something completely foolproof is to underestimate the ingenuity of complete fools.' ",
     "'I'd far rather be happy than right any day.' ",
     "'We demand rigidly defined areas of doubt and uncertainty!' "
 ]
 
 
 #if no ARGV is given run this code
    if ARGV.empty?
        
        puts "Please enter your name."
        name = gets.chomp.capitalize
    else 
        name = ARGV[0]
    end
    ARGV.clear


# ####### Methods #######

#clears terminal to make it less cluttered
def clear
    print "\e[H\e[2J"
end

# loops through still asciiart to animate it
def animation
    3.times do
    i = 1
    while i < 4
      print "\e[H\e[2J"
      File.foreach("./images/#{i}.rb") { |f| puts f }
      sleep(0.3)
      i += 1
    end
  end
end

#prompt = TTY::Prompt.new
####### terminal App #######
begin

    #Asciiart greeting in red
    a = Artii::Base.new :font => 'big'
    puts a.asciify("GREETINGS").colorize(:red)
    puts "I am the Improbability Drive for the Heart of Gold."

    # plays clip of the computer from original radio show
    `afplay -t 7 ./hithere.mp3`

    
    anxiety = true

    ########BEGIN OF UNTIL LOOP#######
    until anxiety == false
    
        puts "I work out the chance of negative repurcussions arising from your decisions."
        puts "#{name}.colorize(red), you are worried about the effects of a decision you have to make today?" 
        
    
        puts "true, false or quit?"
        paranoid = gets.chomp.downcase

        ######BEGIN OF IF(TRUE) ELSIF(FALSE) ELSIF(TRUE)#####
        if paranoid == "true"

            puts "what is the decision you are worried about?"
            decision = gets.chomp
            clear
            puts "The odds of your choice of #{decision} having unexpectedly bad consequences are..."
            puts
            odds = rand(1.5..1120) 
            puts "#{odds} to 1."
            puts
            puts
   
            #######BEGIN OF IF IMPROBABILITY IS TOO HIGH OR ELSE#######
            if odds > 100

                puts "The improbability factor is too high".colorize(:red)
                puts "entering light speed!".colorize(:red)
                puts
                sleep(4.0)
                animation
                #clear
                
            else
                puts
                a = Artii::Base.new :font => 'big'
                puts a.asciify("DO IT").colorize(:red)
                    #puts artii "You are safe to make your decision."
                puts

            end
            #######END OF IF ELSE#######
            
        elsif paranoid == "false"
            clear
            puts

            #PRINTS RANDOM HITCHHIKERS QUOTE FROM ARRAY#
            puts quotes.sample
            puts "The Hitchhiker's Guide to the Galaxy - Douglas Adams"
          
            puts
            
        elsif paranoid == "quit"
            anxiety = false
            clear

            #PRINTS DON'T PANIC IN RED ASCIIART#
            a = Artii::Base.new :font => 'big'
            puts a.asciify("Don't Panic").colorize(:red)

            #VOICE SAYS DON'T PANIC#
            `say "Don't Panic"`
            exit 
        end
        #######END OF ELSE ELSIF ELSIF########
    end
    #######END OF LOOP#######

    #######IF THERE IS A BUG THIS WILL HAPPEN#######
rescue
    puts "Don't Panic! quit to end program."
    `say "Don't Panic"`
end