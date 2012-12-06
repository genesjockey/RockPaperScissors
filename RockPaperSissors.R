#########################################
# Rock-Paper-Scissors in R
#
# Author: Nicholas Goldsmith
# Date : 05 December 2012 to 
#########################################
#Program standards:
# 1 is Rock, 2 is paper, 3 is Scissors

#Steps for the algorithm
#1) Have a while loop
#2) Bring up the menu, asking if they want to play or exit
#3) If play, generate the computer's play OR exit the loop
#4) Ask for the user's play
#5) Compare the plays
#6) Declare a winner
#7) Restart loop

#Use this to generate the computer's move
#result=sample(1:3,1) #generates a random number for the result

#To get user input
#cat("\n","Enter a number", #Prompt user for input
#    "\n","Enter 1 for Rock, 2 for Paper, and 3 for Scissors","\n\n")
#y<-scan(n=1) #Gets input


# Apparently this is a lost cause because you can't make R wait on input
# from the user


#Setting up a function to take user input
userInput <- function() {
  input<-0
  while(!isTRUE(input == 1) && !isTRUE(input == 2) && !isTRUE(input==3)) {
    input <- scan("", what = "integer")
    input
  }
}

#The Initial Start of the code
cat("\n","Welcome to Nicholas' R Rock-Paper-Scissors", #Display Initial Menu
    "\n","Enter 1 to Play or 2 to Exit","\n\n")
play<-NA
#try(n <- scan(what=integer(), nmax=1), silent=TRUE)
play<-userInput()
wins=0
loses=0
ties=0
#The Game Loop
while(play==1){
  computer=sample(1:3,1) #generates a random number for the computer's play
  cat("\n","Enter a number", #Prompt user for input
      "\n","1 for Rock, 2 for Paper, and 3 for Scissors","\n\n")
  user<- NA
  try(user<-scan(n=1)) #Gets input
  if (user==computer){
    ties=ties+1
    cat("\n","Tie","\n\n")
  }
  if (user==1){
    if (computer==2){
      loses=loses+1
      cat("\n","Computer throws Paper, User throws Rock","\n",
          "Sorry, You Lost.","\n\n")
    }
    if (computer ==3){
      wins=wins+1
      cat("\n","Computer throws Scissors, User throws Rock","\n",
          "Congratulations! You won!","\n\n")
    }
  }
  if (user==2){
    if (computer==1){
      wins=wins+1
      cat("\n","Computer throws Rock, User throws Paper","\n",
          "Congratulations! You won!","\n\n")
    }
    if (computer==3){
      loses=loses+1
      cat("\n","Computer throws Scissors, User throws Paper","\n",
          "Sorry, You Lost.","\n\n")
    }
  }
  if (user==3){
    if (computer==1){
      loses=loses+1
      cat("\n","Computer throws Rock, User throws Scissors","\n",
          "Sorry, You Lost.","\n\n")
    }
    if (computer==2){
      wins=wins+1
      cat("\n","Computer throws Paper, User throws Scissors","\n",
          "Congratulations! You won!","\n\n")
    }
  }
  cat("\n","Current Score","\n",
      "Wins: ",wins,"\n",
      "Ties: ",ties,"\n",
      "Loses: ",loses,"\n\n")
  cat("\n","Would you like to play again?", #Display Initial Menu
      "\n","Enter 1 to Play or 0 to Exist","\n\n")
  play<-NA
  try(play<-scan(n=1)) #Get User Input
}
