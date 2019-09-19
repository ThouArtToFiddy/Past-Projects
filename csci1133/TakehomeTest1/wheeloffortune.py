import random

def randomphrase():                    #Returns a random phrase from phrasebak.txt and its category number x
    x = random.randint(0,4)
    y = random.randint(0,19)
    phrases = getphrase()
    return [phrases[x][y].upper(),x]

def getcategory(x):                          #Returns the category of the phrase
    if x == 0:
        return "Before and After"
    elif x == 1:
        return "Song Lyrics"
    elif x == 2:
        return "Around the House"
    elif x == 3:
        return "Food and Drink"
    elif x == 4:
        return "Same Name"
    else:
        return "ERROR Incorrect Category Input"

def getphrase():                                #Puts phrases in a 2d array, with 5 rows of 20
    p = open("phrasebank.txt").read().splitlines()
    PhraseBank = [["" for phrase in range(20)]for category in range(5)]
    for category in range(len(PhraseBank)):
        for phrase in range(len(PhraseBank[0])):
            PhraseBank[category][phrase] = p[(category)*20+phrase]
    return PhraseBank

def action(input,phrase,blocked,earnings,guesses):
    x = input.upper()
    if x == "SPIN":
        return spinthewheel(phrase,blocked,earnings,guesses)
    elif x == "VOWEL":
        return buyAVowel(phrase,blocked,earnings,guesses)
    elif x == "SOLVE":
        return solve(phrase,earnings)
    elif  x == "QUIT":
        return ("",-2,"")
    else:
        print("Your Action: \"",input,"\" was not a valid Action")
        return ("",-1,"")

def solve(phrase,earnings):                 #Checks if the user's guess is correct
    guess = input("Enter your Guess with single spaces\n").upper()
    for i in range(len(guess)):
        if phrase[i]!=guess[i]:         #If any charcter does not match
            print("Your Guess was incorrect!\nCurrent Winnings reset to $0")
            return (False,0)
    print("Your guess was correct!")
    return (True,earnings)

def buyAVowel(phrase,blocked,earnings,guesses):     #Function for when the user buys a vowel
        if earnings<250:                    #Checks to make sure user has more than $250
            print("You don't have enough money to buy a vowel! You need $250!\nYour current Winnings are: $",earnings)
            return (blocked,earnings,"")
        earnings -= 250
        done = False
        while not done:             #Loop to ensure the user enters a valid vowel
            guess = input("$250 deducted from your winnings. Which vowel would you like to buy? (A , E , I , O , U)\n").upper()
            if guess not in "AEIOU":            #If their guess was not AEIOU
                print("Your Guess: \"",guess,"\" is not a valid vowel.")
            else:
                if guess not in guesses:        #Checks to make sure their guess was not already guessed before
                    if phrase.count(guess)>0: #Correctly guesses the vowel
                        print("Congratulations! Your Guess \"",guess,"\" appeared in the Phrase ",phrase.count(guess)," times!")
                        for i in range(len(phrase)):
                            if phrase[i] == guess:
                                blocked[i] = guess
                        return (blocked,earnings,guess)
                    else:       #Incorrectly guesses the vowel
                        print("Oh no! Your Guess\"",guess,"\" did not appear in the Phrase.")
                        return (blocked,earnings,guess)

                else:           #If their guess was already in the list of guesses
                    print("Your Guess: \"",guess,"\" has already been guessed.")

def spinthewheel(phrase,blocked,earnings,guesses):      #Function for the consonant guess spint the wheel
    values = [50,100,100,100,100,100,100,200,200,200,200,250,250,250,500,500,750,750,1000,2000,5000,10000,"Bankrupt"]
    x = random.randint(0,22)
    if values[x] != "Bankrupt":        #If the user did not roll bankrupt
        print("You spun a",values[x])
        done = False
        while not done:         #Loops to make sure the user completes a valid action
            guess = input("Guess a valid consonant \n").upper()
            if guess not in "QWRTYPSDFGHJKLZXCVBNM":                        #Makes sure the user's input was a valid consonant
                print("Your guess: ",guess," is not a valid consonant.")
            elif guess not in guesses:    #Makes sure the user did not guess one that was already guessed
                if phrase.count(guess)>0: #Correctly guesses the consonant
                    earnings += values[x]*phrase.count(guess)
                    print("Congratulations! Your Guess \"",guess,"\" appeared in the phrase ",phrase.count(guess)," times! \nYou've won $ ",values[x]*phrase.count(guess))
                    for i in range(len(phrase)):
                        if phrase[i] == guess:
                            blocked[i] = guess
                    return (blocked,earnings,guess)
                else:                   #Incorrectly guesses the consonant
                    earnings -= values[x]
                    print("Oh no! your Guess \"",guess,"\" did not appear in the phrase\nYou've lost $ ",values[x],".")
                    return (blocked,earnings,guess)
            else:                           #If the user tries to guess a consonant that was already guessed
                print("Your Guess: \"",guess,"\" has already been guessed.","\nTry again.")
    else:                               #If the user did roll a bankrupt
        print("You spun a Bankrupt and lost all your Winnings!\nYou lost your turn!")
        if earnings > 0:
            earnings = 0
        return (blocked,earnings,"")

def blankphrases(phrase):               #Returns blanks for every single character in the phrase
    newphrase = phrase[0]
    newphrase = newphrase.upper()
    for i in "QWERTYUIOPASDFGHJKLZXCVBNM":
        newphrase = newphrase.replace(i,"_")
    return list(newphrase)

def printblocked(blocked):       #Prints a phrase character by character onn the same line
    for x in range(len(blocked)):
        print(blocked[x],end ="")
    print("")

def allletters(guesses):        #Checks if the user has guessed all 26 letters
    for i in "QWERTYUIOPASDFGHJKLZXCVBNM":
        if i not in guesses:
            return False
    return True

def main():
    guesses = ""        #Tracker variable for all the valid guesses the user makes
    earnings = 0        #Tracker for the winnings of the user
    print("Welcome to the Wheel of Fortune!\nThe Phrase is:")
    phrase = randomphrase()
    #print(phrase[0]) #Remove comment infront of print line to show the random phrase
    blocked = blankphrases(phrase)
    print("Your Category Is: ",getcategory(phrase[1]))
    print("Your current Winnings are: $",earnings)
    printblocked(blocked)
    done = False
    while not done:                 #Keeps on looping until the game is finished
        userinput = input("Would you like to Spin the Wheel (type 'spin'), Buy a Vowel (type 'vowel'), Solve the Puzzle (type 'solve'), or Quit (type 'quit')?\n")
        result = action(userinput,phrase[0],blocked,earnings,guesses)
        if result[1]==-1:        #If the user input was invalid, skip this iteration and ask for input again
            continue
        elif result[1]==-2:        #If the user inputs 'quit'
            print("Too hard for you?\nGood luck next time!\nYou have Won: $0")
            done = True
            continue
        elif result[0]==True:     #If the user chose solve and gets it right!
            if earnings > 0:
                print("Congratulations! You Win! \nYour total Winnings: $",result[1],"!")
            else:
                print("Congratulations! You Win! \nYour total Winnings is somehow $0!")
            done = True
            continue
        elif result[0]==False:     #If the user chose solve and got it wrong
            earnings = result[1]
        else:                      #Spins, Vowels, boring
            earnings = result[1]
            blocked = result[0]
            guesses += result[2]
        print("Your Category is: ",getcategory(phrase[1]))
        printblocked(blocked)
        print("Consonants Guessed: ", end = "")
        for i in guesses:                       #Lists out the consonants that were guesses
            if i not in "AEIOU":
                print(i, end = " ")
        print("\nVowels Guessed: ", end = "")
        for i in guesses:                       #Lists out the vowels that were guessed
            if i in "AEIOU":
                print(i,end = " ")
        print("\nYour current Winnings are: $", earnings)

        if allletters(guesses):             #The losing condtion that all 26 letters were guessed
            done = True
            print("You Lost! (You have guessed all the letters and still didn't get it?)","\nYou have Won: $0\nHave a nice day! :D")

if __name__ == '__main__':
    main()
