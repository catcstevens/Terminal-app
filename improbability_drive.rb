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
def animation(x)
    3.times do
    i = 1
    while i < 4
      print "\e[H\e[2J"
      File.foreach("./media/images#{x}/#{i}.rb") { |f| puts f }
      sleep(0.3)
      i += 1
    end
  end
end

# asciiart #
def art(x)
    a = Artii::Base.new :font => 'big'
    puts a.asciify(x).colorize(:red)
end

def dont_panic
    art("DON'T PANIC")
    `say -v "oliver" "Don't Panic"`
end 


####### terminal App #######
begin

    
    #Asciiart greeting in red
    art("GREETINGS")
    
    
    puts "I am the Improbability Drive for the Heart of Gold."

    #plays clip of the computer from original Hitchhikers radio show
    `afplay -t 6.3 ./media/hithere.mp3`

    
    anxiety = true

    ########BEGIN OF UNTIL LOOP#######
    until anxiety == false
    
        puts "\nI work out the chance of negative repurcussions arising from your decisions."
        puts "\n#{name}, you are worried about the effects of a decision you have to make today?".colorize(:red)
        
    
        puts "\ntrue, false or quit?"
        paranoid = gets.chomp.downcase

        ######BEGIN OF IF(TRUE) ELSIF(FALSE) ELSIF(TRUE)#####
        if paranoid == "true"

            puts "what is the decision you are worried about?"
            decision = gets.chomp
            clear
            puts "The odds of your choice of #{decision} having unexpectedly bad consequences are..."
            odds = rand(1.5..1120) 
            puts "\n#{odds} to 1."
            
   
            #######BEGIN OF IF IMPROBABILITY IS TOO HIGH OR ELSE#######
            if odds > 100

                puts "\nThe improbability factor is too high".colorize(:red)
                puts "entering light speed!\n".colorize(:red)
                
                sleep(5.0)
                # plays star animation
                animation(1)
                clear
                
            else
                #puts artii "You are safe to make your decision."
                puts "\nThe odds of something going wrong are low so..."
                art("DO IT!")
        

            end
            #######END OF IF ELSE#######
            
        elsif paranoid == "false"
            clear

            #animation of robot waving
            animation(2)
            #PRINTS RANDOM HITCHHIKERS QUOTE FROM ARRAY#
            puts quotes.sample
            puts "The Hitchhiker's Guide to the Galaxy - Douglas Adams"
          
            
        elsif paranoid == "quit"
            anxiety = false
            clear

            #PRINTS DON'T PANIC IN RED ASCIIART#
            #VOICE SAYS DON'T PANIC#
            dont_panic
           
            
            exit 
        end
        #######END OF ELSE ELSIF ELSIF########
    end
    #######END OF LOOP#######

    #######IF THERE IS A BUG THIS WILL HAPPEN#######
rescue
    #######PRINTS DON'T PANIC AND SAYS IT#######
    dont_panic
end