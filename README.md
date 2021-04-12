#  Rock Paper Scissors Lizard Spock 👊 ✋ ✌️ 🦎 🖖
A single-view app where the user plays the game ROCK PAPER SCISSORS LIZARD SPOCK  against the iOS device. ROCK PAPER SCISSORS LIZARD SPOCK  is a game invented by [Sam Kass and Karen Bryla](http://www.samkass.com/theories/RPSSL.html).This app is an extension the rock, paper, scissors game app created as part of Apple's **Develop in Swift Explorations** ([Teacher](https://books.apple.com/us/book/develop-in-swift-explorations-teacher-guide/id1511184084) and [Student](https://books.apple.com/us/book/develop-in-swift-explorations/id1511184149)) course. The project can be found in Unit 4 starting on page 368 in the Student book and starting on page 571 in the Teacher Guide. 

## Background 👩🏼‍🎓 🧑🏿‍🎓 👨🏽‍🎓 👩🏻‍💻 👨🏾‍💻
This project builds works under the assumption that you or your students have built the Rock Paper Scissors app using Apple's **Develop in Swift Explorations** course. So, if you have not done that already you will need to go and do that before creating this app because it is really a modification of the Rock Paper Scissors app made for the course. Further, I think this project is best taught after you have taught the concepts of Auto-Layout and a more in-depth lesson on Enumerations. This means that I use this app project as a fun follow up to the Enumerations lesson Apple's **Development in Swift Fundamentals** ([Teacher](https://books.apple.com/us/book/develop-in-swift-fundamentals-teacher-guide/id1511184161) and [Student](https://books.apple.com/us/book/develop-in-swift-fundamentals/id1511184145)) course. The Enumerations lesson is in Unit 3: Navigation and Workflows and starts on page 402 in the Student book. 

I decided to create/modify the app as an extension to the Rock, Paper, Scissors lesson in Unit 4 of App Development in Swift - Explorations because it was featured on multiple episodes of the tv show [The Big Bang Theory](https://the-big-bang-theory.com/?src=topLogo). The game and rules were mentioned or explained in [Season 2, Episode 8 of the Big Bang Theory](https://the-big-bang-theory.com/episodeguide/episode/208/The-Lizard-Spock-Expansion/), [Season 2, Episode 20](https://the-big-bang-theory.com/episodeguide/episode/220/The-Hofstadter-Isotope/), and [Season 5, Episode 17](https://the-big-bang-theory.com/episodeguide/episode/517/The-Rothman-Disintegration/) which has in depth and hilarious explanation of the game's rules. You can watch the explanation of the game's rules here: [ROCK PAPER SCISSORS LIZARD SPOCK rules](https://www.youtube.com/watch?v=x5Q6-wMx-K8). Anytime I can give my students a real world example of how we could create an app or how a feature in an app in an app is the same as or similar to a well-known app, then I have captured there time, attention, and interest even more than normal. If I can include pop culture references, then I have got them right where I want them!

## Purpose 🖥 💻 📱
The general purpose of this project is to reinforce the use of Enumerations in the Swift language and to introduce my students to the process of software improvement and iteration by taking some software they created and adding functionality to it. In doing this I am also able to introduce the concepts of software versioning and using GitHub for software creation, versioning, and the proper (and safe) way to iterate on software using branching and merging. If you are going to do this project individually or with your students, I am going to make the assumption that you have access to Mac hardware and, just as important, Apple first-party software such as Keynote, Preview, and Pages.

## Process 👩🏾‍🏫 👨🏻‍🏫 👨🏻‍💻 👩🏽‍💻
The general process and flow of this project is in the format of an Apple Teacher Portfolio lesson. There are three parts/phases to the lesson
    - Activate
    - Explore 
    - Apply
 You can learn more about and sign up for Apple Teacher here: [Apple Teacher](https://www.apple.com/education/k12/teacher-resources/). 


### Activate
We want our students to activate any prior knowledge on the topic. Since our students have previously made the Rock Paper Scissors app, they will all have some prior knowledge on how the app works. However, the goal of the project is to improve the app and update a functioning app. Here is the activity I use with my students:

    1. Have students play RPS using their hands. Have a person record a video of it using an iPhone or iPad.
    2. Keep track of the number of ties in the game between the two players.
    3. Discuss how can we make the game better and result in fewer ties. 
    4. Highlight that we want to give players more options without too many to remember.
    5. Discuss five choices - students can draw a pentagon and place emoji at points to map choices
    6. Introduce RPSLS witH the Big Bang Theory segment discussing game rules.

⚛️ [Big Bang Theory video discussing game rules](https://www.youtube.com/watch?v=x5Q6-wMx-K8) ⚛️

### Explore
After we have students think about extending the app and have introduced Rock Paper Scissors Lizard Spock as a solution, we now want our students to either accept RPSLS as the solution they are going to build or build a similar app that has five choices that uses five different emoji as the player choices.

    1. Give students the game rules as a text file
    2. Build a game graphic in Keynote using the emoji used in the game
    3. Export the graphic as an image to the .png format 
    4. Students now need to decide if they want to build two-screen app 
    (where the game rules are displayed on a second screen as image file) or 
    a single view of the game (where the rules are displayed as a label when 
    the UI is updated to show if the player has won, loss, or played to a draw).

### Apply 
In this part of the project we build the app.
    *Note: There is a file in the app with this steps listed below, screenshots of some the specific Attributes Inspector settings, and links to screen recordings of the app creation process.*
    
    1. Create branch from original RPS app to create Rock Paper Scissors Lizard Spock app
        1. Take original app and put stuff in stack views and add constraints
            1. If the app is put on a physical device the emoji will show a blue line under the emoji. This is because of the Text Color attribute setting in the Attributes Inspector.
            2. Update “Text Color” in the Attributes Inspector to be “Secondary System Fill Color”
    2. Update Sign.swift enum cases and emoji variable to add lizard and Spock
    3. Don’t need to Update GameState.swift enum because there are still four states of the game: start, win, lose, draw
    4. Update gameState func to include the extra wining comparisons for Rock, Paper, and Scissors. Add comparisons for lizard & Spock
    5. Update randomSign in Sign.swift to include lizard and Spock
    6. Add lizard and Spock buttons in MainStoryboard
        1. Embed in stack view 
        2. Drag into larger stack view
        3. Adjust main stack view spacing
    7. Create outlets for for lizard and Spock buttons
    8. Create actions for lizard and Spock buttons
    9. Update the UpdateUI function in viewController.swift for lizard and Spock
    10. Update the play function in VC for lizard and Spock
    11. Add calls to the play function in lizard and Spock IBAction functions
    12. Game is now complete. Build and run. If everything works Checkout of brach back into main and then merge branches.
    13. How can we make it better
        1. Make the opponent label randomly choose an emoji from multiple emoji?
        2. Allow the user to see the game rules?
    14. Create new branch for adding rules 
    15. Adding the game rules on a second screen version of the app
        1. Export rules Keynote as an image and save as a png file
        2. Add a new view con
        3. Add a button and constraints at bottom to view rules
        4. Control-drag and create a show segue to new view controller
        5. Add imageView from Object Library to new view controller
        6. Drag Keynote image file in assets.xcassets folder
        7. Choose your Keynote rules image from the image dropdown in the Attributes Inspector for the imageView
        8. Build and run. If everything works Checkout of brach back into main and then merge branches.
    16. Adding the game rules as a label within the game version of the app
        1. Add a label to large stack view named resultLabel
        2. Add a result variable to ViewController.swift
        3. Assign result to be empty string for .draw and .lose cases
        4. Add the two losing cases for each case the user can play
        5. Build and run. If everything works Checkout of brach back into main and then merge branches.
    17. Bonus - icon set creation using Keynote and Mac App Store app Icon Set Creator

You can find a write up of my process, sample materials, and screencasts of the process I used at my blog: [Swift Teacher Blog](https://www.swiftteacher.org).
    
I created the poject in part using a Creative Commons 3.0 attribution, Non-Commerical license from Sam Kass: [Sam Kass](http://www.samkass.com/theories/RPSSL.html).

