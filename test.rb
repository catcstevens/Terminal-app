
def talk(string)
  `say -v "oliver" string`

end

talk("Hello baby")

# def animation
#     3.times do
#     i = 1
#     while i < 4
#       print "\e[H\e[2J"
#       File.foreach("./images2/#{i}.rb") { |f| puts f }
#       sleep(0.3)
#       i += 1
#     end
#   end
# end

# animation
