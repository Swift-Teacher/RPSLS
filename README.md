#  Rock Paper Scissors Lizard Spock 👊 ✋ ✌️ 🤏 🖖
A single-view app where the user plays the game ROCK PAPER SCISSORS LIZARD SPOCK  against the iOS device. ROCK PAPER SCISSORS LIZARD SPOCK  is a game invented by [Sam Kass and Karen Bryla](http://www.samkass.com/theories/RPSSL.html).This app is an extension of the rock, paper, scissors game app created as part of Apple's **Develop in Swift AP CS Principles** ([Teacher](https://books.apple.com/us/book/develop-in-swift-ap-cs-principles-teacher-guide/id1581182833) and [Student](https://books.apple.com/us/book/develop-in-swift-ap-cs-principles/id1581182719)) course and **Develop in Swift Explorations** ([Teacher](https://books.apple.com/us/book/develop-in-swift-explorations-teacher-guide/id1511184084) and [Student](https://books.apple.com/us/book/develop-in-swift-explorations/id1511184149)) course. The project can be found in Unit 4 starting on page 368 in the Student book and starting on page 571 in the Teacher Guide. 

## Background 👩🏼‍🎓 🧑🏿‍🎓 👨🏽‍🎓 👩🏻‍💻 👨🏾‍💻
This project works under the assumption that you or your students have built the Rock Paper Scissors app using Apple's **Develop in Swift Explorations** course. So, if you have not done that already you will need to go and do that before creating this app because it is really a modification/extension of the Rock Paper Scissors app made for the course. There are, as I see it, two options to include this lesson into your classroom.

#### Option 1 1️⃣🥇
You can build this project as a direct follow-up and extension of the Rock Paper Scisoors lesson in Unit 4: Building Apps in Apple's **Develop in Swift Explorations** course and should then be taught directly following the original lesson.

#### Option 2 2️⃣🥈
This project can be taught after you have taught the concepts of Auto-Layout and a more in-depth lesson on Enumerations. This means that I use this app project as a fun follow up to the Enumerations lesson Apple's **Development in Swift Fundamentals** ([Teacher](https://books.apple.com/us/book/develop-in-swift-fundamentals-teacher-guide/id1511184161) and [Student](https://books.apple.com/us/book/develop-in-swift-fundamentals/id1511184145)) course. The Enumerations lesson is in Unit 3: Navigation and Workflows and starts on page 402 in the Student book. 

I initially decided to create/modify the app as an extension to the Rock, Paper, Scissors lesson in Unit 4 of App Development in Swift - Explorations because it was featured on multiple episodes of the tv show [The Big Bang Theory](https://the-big-bang-theory.com/?src=topLogo). The game and rules were mentioned or explained in [Season 2, Episode 8 of the Big Bang Theory](https://the-big-bang-theory.com/episodeguide/episode/208/The-Lizard-Spock-Expansion/), [Season 2, Episode 20](https://the-big-bang-theory.com/episodeguide/episode/220/The-Hofstadter-Isotope/), and [Season 5, Episode 17](https://the-big-bang-theory.com/episodeguide/episode/517/The-Rothman-Disintegration/) which has in depth and hilarious explanation of the game's rules. However, teaching this project as a direct follow-up to the original Rock Paper Scissors App Building lesson would also be appropriate depending upon your class, students, and their knowledge and skill.

You can watch the explanation of the game's rules here: [ROCK PAPER SCISSORS LIZARD SPOCK rules](https://www.youtube.com/watch?v=x5Q6-wMx-K8). Anytime I can give my students a real world example of how we could create an app or how a feature in an app in an app is the same as or similar to a well-known app, then I have captured there time, attention, and interest even more than normal. If I can include pop culture references, then I have got them right where I want them!


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

    1. You and a partner will play at least ten rounds of Rock Paper Scissors. Have a third person record a video of it using an iPhone or iPad.
    2. Insert video into the first Numbers sheet tab.
    3. Record the number of wins for each player and the number of draws (ties) by putting a “1” in the correct cell.
    4. Using the Results sheet in the next tab, determine the percentage of ties that occurred.
    5. Discuss how can we make the game better and result in fewer draws (ties).
    6. Discuss five choices - draw a pentagon and place emoji at points to map choices.
    7. Watch and learn about Rock Paper Scissors Lizard Spock in this Big Bang Theory segment from YouTube.
    8. You and a partner will now play at least ten rounds of Rock Paper Scissors Lizard Spock. Have a third person record the outcomes of each round.
    9. Record the number of wins for each player and the number of draws (ties) by putting a "1" in the correct cell.
    10. Using the table on the last page, determine the percentage of ties that occurred. Determine the number of choices for each player, then computer the total number of outcomes for two players, three players, four players. 


⚛️ [Big Bang Theory video discussing game rules](https://www.youtube.com/watch?v=x5Q6-wMx-K8) ⚛️

### Explore
After we have students think about extending the app and have introduced Rock Paper Scissors Lizard Spock as a solution, we now want our students to either accept RPSLS as the solution they are going to build or build a similar app that has five choices that uses five different emoji as the player choices.

    1. Give students the game rules as a text file.
    2. Pseudocode the algorithm for the new randomSign & GameState (Hint: refer to the Sign.swift file for the in the original RPS game for the original algorithm as a guide).
    3. Export the graphic as an image to the .png format.
    4. Students should now consider if they want to build two-screen app
    (where the game rules are displayed on a second screen as image file) or 
    a single view of the game (where the rules are displayed as a label when 
    the UI is updated to show if the player has won, loss, or played to a draw).

### Apply 
In this part of the project we build the app.
    *Note: There is an RPSLS project PDF file in the app with this steps listed below, screenshots of some the specific Attributes Inspector settings, and links to screen recordings of the app creation process.*
    
    1. Create branch from original RPS app to create Rock Paper Scissors Lizard Spock app
        1. Take original app and put stuff in stack views and add constraints
            1. If the app is put on a physical device the emoji will show a blue line under the emoji. This is because of the Text Color attribute setting in the Attributes Inspector.
            2. Update “Text Color” in the Attributes Inspector to be “Secondary System Fill Color”
    2. Update Sign.swift enum cases and emoji variable to add lizard and Spock
    3. Emphasize that we do not need to Update GameState.swift enum because there are still four states of the game: start, win, lose, draw
    4. Update gameState func to include the extra wining comparisons for Rock, Paper, and Scissors. 
    5. Add comparisons for lizard & Spock
    6. Update randomSign in Sign.swift to include lizard and Spock
    7. Add lizard and Spock buttons in MainStoryboard
        1. Embed in stack view 
        2. Drag into larger stack view
        3. Adjust main stack view spacing
    8. Create outlets for for lizard and Spock buttons
    9. Create actions for lizard and Spock buttons
    10. Update the UpdateUI function in ViewController.swift for lizard and Spock
    11. Update the play function in ViewController.swift for lizard and Spock
    12. Add cases for lizard and spock in userSign switch statement inside of play function
    13. Add calls to the play function in lizard and Spock IBAction functions
    14. Game is now complete. Build and run. Will get incorrect emoji chosen for lizard and Spock. Need to fix by deleting rockChosen connection in Connections Inspector.
    15. Build and run. If everything works Checkout of brach back into main and then merge branches.
    16. How can we make it better
        1. Make the opponent label randomly choose an emoji from multiple emoji?
        2. Allow the user to see the game rules?
    17. Random opponentSignLabel emoji
        1. Update Gamestate.swift status variable start case to include lizard and Spock.
        2. Create a variable array of emoji in viewController.swift.
        3. Assign the opponentSignLabel.text property to be a random element to the variable array in viewController.swift.
    18. Create new branch for adding rules 
    19. Adding the game rules on a second screen version of the app
        1. Export rules Keynote as an image and save as a .png file.
        2. Add a new View Controller.
        3. Add a button and constraints at bottom to view rules.
        4. Control-drag and create a show segue to new view controller
        5. Add imageView from Object Library to new view controller
        6. Drag Keynote image file in assets.xcassets folder.
        7. Choose your Keynote rules image from the image dropdown in the Attributes Inspector for the imageView.
        8. Embed the initial viewController in a NavigationController.
        9. Build and run. If everything works Checkout of brach back into main and then merge branches.
    20. Adding the game rules as a label within the game version of the app
        1. Add new branch
        2. Add a label to large stack view named ruleLabel and set Font to Title 
        3. Create a rule variable in Sign.swift.
        4. Assign rule to be an empty string for .draw and .lose cases in Sign.swift.
        5. Assign rule as a string to each of the existing winning results with the corresponding rule in Sign.swift.
        6. Assign the appropriate rule as a string and return .lose for each of the losing outcome in Sign.swift.
        7. Open the Assistant Editor and create the ruleLabel outlet in ViewController.swift.
        8. Assign ruleLabeL in updateUI function in .start in ViewController.swift to hide the label.
        9. Assign ruleLabel to be visible in play function.
        10. Assign the appropriate rule to the ruleLabel’s text property
        11. Build and run. If everything works Checkout of brach back into main and then merge branches.


You can find a write up of my process, sample materials, and screencasts of the process I used at my blog: [Swift Teacher Blog](https://www.swiftteacher.org/swift-teacher/2021/4/20/lizard-spock-addition-conundrum).
    
I created the poject in part using a Creative Commons 3.0 attribution, Non-Commerical license from Sam Kass: [Sam Kass](http://www.samkass.com/theories/RPSSL.html).

