# Software Development Plan

The terminal application that I will be developing will be the long awaited Infinite Improbability Drive that powers the spaceship Heart of Gold in Hitchhiker's Guide to the Galaxy. 

## Statement of Purpose and Scope

The user will approach the Infite Improbability Drive (IID) with a burning conundrum. The IID will use its advanced processing speed to work out the improbability of the event having negative repurcussions. It will then inform the user what there chances are, and as a byproduct the energy created in solving this problem will provide the energy to power the heart of darkness. If the problem gives a result of infinite improbability it will create an image to indicate flying in hyper-drive.

### The Problem

Modern society has created a decision overload. Everyday a person needs to decide what to wear, what to eat for breakfast, what transport they should use to commute before they even get to work! Implicit is the ramifications of these decision. If I eat bacon will my vegan colleague smell it on me? Is it problematic that my shoes might have been made in a sweat-shop? Is there any point in buying an electric car when the electricity is generated from coal-power?

### The Audience

This application is aimed at anxious professional people who are stuck in the paradox of choice. 

### How it will be used

The user will input the decision they are afraid to make due to fear of their choice having unwanted side effects. The application will use its advanced processing power to output the odds of their decision going wrong. If the odds are low enough the app will recommend going ahead with the decision. If the improbability is high enough the Improbability Drive will go into Hyperdrive and simulate flying through space.

# Features

1. Method

There will be a lot of text and images in this application, so there will be a method to clear the screen at each condition so that the user output can be more easily identified. 

There will also be animated asciiart in more than one place, so a method will define how to loop through the various images.

These will both use local variables.

1. Control Structure/ loops

After getsing the users name this application enters an _until_ loop with a local variable. The user can input true/ false / quit. If the user inputs true it will enter an if/else, output a message or image and return to the beginning of the loop. If the user enters false the appliaction will output a quote, then return to the beginning of the loop. Inputting quit will exit from the loop.

There will be moving images that us a _while_ loop to loop through multiple static images to make an animation. This will use a local variable that incrmentally increases as it goes through the loop.


1. Error Handling

All of the applications code will be in _begin_ , _rescue_ , _end_, in case of errors. If an error occurs it will `say "Don't Panic"`, it will also print the message in case the users sound is muted.


# User Interaction and Development

 - User will run the improbability_drive.rb from the index.sh file.
 - A welcome will print to the screen in Artii and then the user will be prompted to input their name.
  - After inputting their name to the command line the program will greet them and ask if they have a decision they need to make. They will be prompted to type true, false or quit.
   - If they input true the program will ask what their decision is. It will output whether the chances of negative repurcussions from their decision are high enough to warrant concern.
    - If the odds are low the program will output "Do It"
    - If the odds are high the user will be warned that they are going into hyperdrive. An image will simulate travelling through space.

    - If, however they input false the program will output a sarcastic quote from the Hitchhikers Guide to the Galaxy and a different animated image.

    - After the image output the program will loop back to asking if the user has any decisions to make.

    - Inputting quit will quit the program.

    - If an error occurs the program will print and say, "Don't Panic"."


# Control Flow Diagram

! [flowchart screenshot](flow_chart_15_Nov.png)






