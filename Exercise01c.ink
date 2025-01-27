/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Variable types: integer, float, boolean
 - Variable assignment
 - Printing variables
 - Variable checking
 
 In the assignment:
 - Add four more knots
 - Assign at least TWO new variables through player choices
 - Print at least one of the variables to the player in a passage
 - Check the value of a variable and have it do something


VAR health = 5
VAR pet_name = ""


-> memory

== memory ==
Before you stands the cave of Josh. You wish your childhood pet were here with you. What was it's name?

* [Charlie] 
    ~ pet_name = "Charlie"
    -> cave_mouth

== cave_mouth ==
You are at the enterance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.



+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up the torch] -> torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
-> END

== west_tunnel ==
You are in the west
+ [Go Back] -> cave_mouth
-> END

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END

*/

VAR bonus_points = 0
VAR prize = ""

-> intro

== intro ==
"Hello viewers and welcome back to..."
"THIRTY DOORS!!!"
"I'm your host, Jeremiah Sispariah, and we have made it down to our last contestant. Do you want to tell the audience a little about yourself?"
* [I'd love to]
"Well that's too bad there's no time we've got to quickly go over these rules."
-> rules
* [Sure]
"Well that's too bad there's no time we've got to quickly go over these rules."
-> rules
* [Not really]
"OK... who does this guy think he is haha"
"ON TO THE RULES"
-> rules

== rules ==
"As you can see in front of you are twelve closed doors and ninteen previously opened ones. Behind each door is a different prize that YOU can take home tonight." 
"The big prize tonight is a CYBERTRUCK! It has yet to be discovered so there's still a chance to win it"
"To make things a little more interesting, for each trivia question answered correctly, you will have the option to open another door. How does that sound?"
* [I'm ready for trivia] -> trivia
* [I don't need trivia Jeremiah] -> doors

== trivia ==
"What do butterflies use their antennae for?"
"Balance? Navigation? Or Smelling?"
*[balance] 
    "Sorry the right answer was smelling"
    -> wrong_triv
*[navigation] 
    "Sorry the right answer was smelling"
    -> wrong_triv
*[smelling]
    ~ bonus_points += 1
    "Congratulations you are correct!"
    -> trivia2

== trivia2 ==
"For another bonus door here's your question:"
"Gnosiophobia is the fear of what?"
*[memory loss] 
    "Sorry the right answer was knowledge"
    -> wrong_triv
*[decision making] 
    "Sorry the right answer was knowledge"
    -> wrong_triv
*[knowledge]
    ~ bonus_points += 1
    "Congratulations you are correct!"
    -> trivia3
    
== trivia3 ==
"Here's your last chance at a third trivia point."
"What is the world's fastest growing plant?"
*[bamboo] -> wrong_triv
*[duckweed] 
    "Sorry the right answer was bamboo"
    -> wrong_triv
*[kelp]
    "Sorry the right answer was bamboo"
    -> wrong_triv


== wrong_triv ==
"You ended with a total of {bonus_points} bonus points"
"Each bonus point will give you another chance to open a door, but once you decide to open another, you lose the previous doors you picked."
-> doors

== doors ==
"There could be anything behind those doors..."
*[Door 1] -> door_1
*[Door 2] -> door_2
*[Door 5] -> door_5
*[Door 6] -> door_6
*[Door 8] -> door_8
*[Door 11] -> door_11
*[Door 13] -> door_13
*[Door 16] -> door_16
*[Door 18] -> door_18
*[Door 22] -> door_22
*[Door 27] -> door_27
*[Door 28] -> door_28
*[Door 30] -> door_30
-> END

== door_1 ==
~ prize = "airpods"
"Congratulations, you won {prize}"
{bonus_points > 0: "You have {bonus_points} bonus points left. Would you like to try for a different prize?}
* {bonus_points > 0 } [Yes] 
        ~ bonus_points -= 1
        -> doors
*{bonus_points > 0 }[I like what I have] -> outro


== door_2 ==
~ prize = "a singular goat"
"Congratulations, you won {prize}"
{bonus_points > 0: "You have {bonus_points} bonus points left. Would you like to try for a different prize?}
* {bonus_points > 0 } [Yes] 
        ~ bonus_points -= 1
        -> doors
*{bonus_points > 0 }[I like what I have] -> outro


== door_5 ==
~ prize = "a $50 starbucks gift card"
"Congratulations, you won {prize}"
{bonus_points > 0: "You have {bonus_points} bonus points left. Would you like to try for a different prize?}
* {bonus_points > 0 } [Yes] 
        ~ bonus_points -= 1
        -> doors
*{bonus_points > 0 }[I like what I have] -> outro


== door_6 ==
~ prize = "12 slices of ham"
"Congratulations, you won {prize}"
{bonus_points > 0: "You have {bonus_points} bonus points left. Would you like to try for a different prize?}
* {bonus_points > 0 } [Yes] 
        ~ bonus_points -= 1
        -> doors
*{bonus_points > 0 }[I like what I have] -> outro


== door_8 ==
~ prize = "a new tool box"
"Congratulations, you won {prize}"
{bonus_points > 0: "You have {bonus_points} bonus points left. Would you like to try for a different prize?}
* {bonus_points > 0 } [Yes] 
        ~ bonus_points -= 1
        -> doors
*{bonus_points > 0 }[I like what I have] -> outro


== door_11 ==
~ prize = "a new microwave"
"Congratulations, you won {prize}"
{bonus_points > 0: "You have {bonus_points} bonus points left. Would you like to try for a different prize?}
* {bonus_points > 0 } [Yes] 
        ~ bonus_points -= 1
        -> doors
*{bonus_points > 0 }[I like what I have] -> outro


== door_13 ==
~ prize = "the cybertruck"
"Congratulations, you won {prize}"
{bonus_points > 0: "You have {bonus_points} bonus points left. Would you like to try for a different prize?}
* {bonus_points > 0 } [Yes] 
        ~ bonus_points -= 1
        -> doors
*{bonus_points > 0 }[I like what I have] -> outro


== door_16 ==
~ prize = "an all expenses paid trip to Vegas"
"Congratulations, you won {prize}"
{bonus_points > 0: "You have {bonus_points} bonus points left. Would you like to try for a different prize?}
* {bonus_points > 0 } [Yes] 
        ~ bonus_points -= 1
        -> doors
*{bonus_points > 0 }[I like what I have] -> outro


== door_18 ==
~ prize = "a bonsai tree"
"Congratulations, you won {prize}"
{bonus_points > 0: "You have {bonus_points} bonus points left. Would you like to try for a different prize?}
* {bonus_points > 0 } [Yes] 
        ~ bonus_points -= 1
        -> doors
*{bonus_points > 0 }[I like what I have] -> outro


== door_22 ==
~ prize = "a new iPhone 16"
"Congratulations, you won {prize}"
{bonus_points > 0: "You have {bonus_points} bonus points left. Would you like to try for a different prize?}
* {bonus_points > 0 } [Yes] 
        ~ bonus_points -= 1
        -> doors
*{bonus_points > 0 }[I like what I have] -> outro


== door_27 ==
~ prize = "a kitchen set"
"Congratulations, you won {prize}"
{bonus_points > 0: "You have {bonus_points} bonus points left. Would you like to try for a different prize?}
* {bonus_points > 0 } [Yes] 
        ~ bonus_points -= 1
        -> doors
*{bonus_points > 0 }[I like what I have] -> outro


== door_28 ==
~ prize = "a shoe for only your right foot"
"Congratulations, you won {prize}"
{bonus_points > 0: "You have {bonus_points} bonus points left. Would you like to try for a different prize?}
* {bonus_points > 0 } [Yes] 
        ~ bonus_points -= 1
        -> doors
*{bonus_points > 0 }[I like what I have] -> outro


    

== door_30 ==
~ prize = "a few sheets of stickers"
"Congratulations, you won {prize}"
{bonus_points > 0: "You have {bonus_points} bonus points left. Would you like to try for a different prize?} 
* {bonus_points > 0 } [Yes] 
        ~ bonus_points -= 1
        -> doors
*{bonus_points > 0 }[I like what I have] -> outro



== outro ==
"Thanks for playing!"
-> END