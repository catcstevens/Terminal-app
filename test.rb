def animation
    15.times do
    i = 1
    while i < 4
      print "\e[H\e[2J"
      File.foreach("./images/#{i}.rb") { |f| puts f }
      sleep(0.3)
      i += 1
    end
  end
end

animation