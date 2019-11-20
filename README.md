# Description

The terminal application that I will be developing will be the long awaited Infinite Improbability Drive that powers the spaceship Heart of Gold in Hitchhiker's Guide to the Galaxy. 

Modern society has created a decision overload. Everyday a person needs to decide what to wear, what to eat for breakfast, what transport they should use to commute before they even get to work! Implicit is the ramifications of these decision. If I eat bacon will my vegan colleague smell it on me? Is it problematic that my shoes might have been made in a sweat-shop? Is there any point in buying an electric car when the electricity is generated from coal-power?

This application, written in Ruby and run on the command line will help busy professionals make decisions quickly without worried that they will have unintended consequences.

# Installation Instructions

1. Follow these instructions to download and install Ruby on you computer.

   ```https://www.ruby-lang.org/en/documentation/installation/```

2. Clone zip from GitHub

3. Download and unzip project files onto your computer

4. On the terminal command line cd into 

   > CatherineCallcottStevens_T1A3 directory. 

5. Install the bundler gem if you haven't already done so.

   > install bundler

6. Ask bundle to install the gems needed to run program

   > bundle install

7. In the terminal run bash script to run the file.

      > chmod u+x index.sh

   > ./index.sh

8. Alternatively run

   > ruby improbability_drive.rb your_name

   # Dependencies

   1. Only tested on MacOS Mojave 10.14.6
   2. Volume turned on for non-essential elements of app
   3. Gems used

      1. gem "faker", "~> 2.7"

      2. gem "colorize", "~> 0.8.1"

      3. gem "artii", "~> 2.1"

      4. gem "tty-prompt", "~> 0.19.0"

# Features

1. Methods

There will be a lot of text and images in this application, so there will be a method to clear the screen at each condition so that the user output can be more easily identified. 

There will also be animated asciiart in more than one place, so a method will define how to loop through the various images.

These will both use local variables.

2. Control Structure/ loops

After getsing the user's name this application enters an _until_ loop with a local variable. The user can input true/ false / quit. If the user inputs true it will enter an if/else, output a message or image and return to the beginning of the loop. If the user enters false the appliaction will output a quote, then return to the beginning of the loop. Inputting quit will exit from the loop.

There will be moving images that use a _while_ loop to loop through multiple static images to make an animation. This will use a local variable that incrmentally increases as it goes through the loop.


3. Error Handling

All of the applications code will be in _begin_ , _rescue_ , _end_, in case of errors. If an error occurs it will `say "Don't Panic"`, it will also print the message in case the user's sound is muted.

