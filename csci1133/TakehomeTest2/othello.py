import turtle
import random

# Jerry Wu wu000169
# I understand this is a graded, individual examination that may not be
# discussed with anyone.  I also understand that obtaining solutions or
# partial solutions from outside sources, or discussing
# any aspect of the examination with anyone will result in failing the course.
# I further certify that this program represents my own work and that none of
# it was obtained from any source other than material presented as part of the
# course.

def baseBoard():        #Function for creating the base board
    turtle.setworldcoordinates(-600,-400,400,600)
    turtle.speed(0)
    turtle.hideturtle()
    turtle.penup()
    drawSquare(-700,600,1300,"Black")
    rownum = 0
    columnum = 0
    turtle.tracer(0,0)
    while columnum < 8:
        turtle.penup()
        turtle.goto(-500,500-columnum*100)
        if columnum % 2 == 0:
            color = "forestgreen"
        else:
            color = "darkgreen"
        while rownum < 8:
            if color == "forestgreen":
                color = "darkgreen"
            else:
                color = "forestgreen"
            drawSquare(turtle.xcor(),turtle.ycor(),100,color)
            rownum+=1
        columnum += 1
        rownum = 0
    headers1 = {1:"A",2:"B",3:"C",4:"D",5:"E",6:"F",7:"G",8:"H"}
    i = 1
    turtle.color("White")
    for x in range(8):        #Create number headers
        turtle.goto(-567+i*100,510)
        turtle.write(headers1[i],font =  ("Ariel",30,"normal"))
        turtle.goto(-567+i*100,-395)
        turtle.write(headers1[i],font =  ("Ariel",30,"normal"))
        i+=1
    for y in range(8):      #Create letter headers
        turtle.goto(-570,410-100*y)
        turtle.write(str(8-y),font =  ("Ariel",30,"normal"))
        turtle.goto(335,410-100*y)
        turtle.write(str(8-y),font =  ("Ariel",30,"normal"))
    turtle.update()

def isWithinBounds(x,y):    #Checks to see if x,y is on the 8x8 board
    if(x>-1 and x<8 and y>-1 and y<8):
        return True
    else:
        return False

def selectNextPlay(board):  #Computer's move
    moves = getValidMoves(board,"White")
    x = [(0,0),(0,7),(7,0),(7,7)]   #4 corners takes highest priority
    for y in x:
        if y in moves:
            return y

    for y in moves:             #boundary takes second highest priority
        if 0 or 7 in y:
            return y
        else:
            pass
                                #badmoves are moves right next to boundary
    badmoves = [(1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(1,2),(1,3),(1,4),(1,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(6,2),(6,3),(6,4),(6,5)]

    for y in moves:
        if y not in badmoves:
            return y


    move = random.randint(0,len(moves)-1)
    return moves[move]

                                                #Functions used in both isValidMove() and makeMove()
def isValidTopLeft(board,row,col,color):
    dec = 2    # if point is empty, and in range, and has at least 1 other color, and is not blank
    if board[row][col]=="" and isWithinBounds(row-1,col-1) and board[row-1][col-1]!=color and board[row-1][col-1]!="": #Topleft
        while isWithinBounds(row-dec,col-dec):
            if board[row-dec][col-dec]==color:         #checks if the second (and onward) piece away is the same color as color
                return True
            elif board[row-dec][col-dec]!="":           #checks if the second (and onward) piece is the opposite color
                dec+=1
            else:                                       #if its blank aka no color sandwiching, return a false for that direction
                break
    return False
def isValidTop(board,row,col,color):
    dec = 2
    if board[row][col]=="" and isWithinBounds(row-1,col) and board[row-1][col]!=color and board[row-1][col]!="": #Top
        while isWithinBounds(row-dec,col):
            if board[row-dec][col]==color:
                return True
            elif board[row-dec][col]!="":
                dec+=1
            else:
                break
    return False
def isValidTopRight(board,row,col,color):
    dec = 2
    if board[row][col]=="" and isWithinBounds(row-1,col+1) and board[row-1][col+1]!=color and board[row-1][col+1]!="": #Top
        while isWithinBounds(row-dec,col+dec):
            if board[row-dec][col+dec]==color:
                return True
            elif board[row-dec][col+dec]!="":
                dec+=1
            else:
                break
    return False
def isValidLeft(board,row,col,color):
    dec = 2
    if board[row][col]=="" and isWithinBounds(row,col-1) and board[row][col-1]!=color and board[row][col-1]!="": #Top
        while isWithinBounds(row,col-dec):
            if board[row][col-dec]==color:
                return True
            elif board[row][col-dec]!="":
                dec+=1
            else:
                break
    return False
def isValidRight(board,row,col,color):
    dec = 2
    if board[row][col]=="" and isWithinBounds(row,col+1) and board[row][col+1]!=color and board[row][col+1]!="": #Top
        while isWithinBounds(row,col+dec):
            if board[row][col+dec]==color:
                return True
            elif board[row][col+dec]!="":
                dec+=1
            else:
                break
    return False
def isValidBottomLeft(board,row,col,color):
    dec = 2
    if board[row][col]=="" and isWithinBounds(row+1,col-1) and board[row+1][col-1]!=color and board[row+1][col-1]!="": #Top
        while isWithinBounds(row+dec,col-dec):
            if board[row+dec][col-dec]==color:
                return True
            elif board[row+dec][col-dec]!="":
                dec+=1
            else:
                break
    return False
def isValidBottom(board,row,col,color):
    dec = 2
    if board[row][col]=="" and isWithinBounds(row+1,col) and board[row+1][col]!=color and board[row+1][col]!="": #Top
        while isWithinBounds(row+dec,col):
            if board[row+dec][col]==color:
                return True
            elif board[row+dec][col]!="":
                dec+=1
            else:
                break
    return False
def isValidBottomRight(board,row,col,color):
    dec = 2
    if board[row][col]=="" and isWithinBounds(row+1,col+1) and board[row+1][col+1]!=color and board[row+1][col+1]!="": #Top
        while isWithinBounds(row+dec,col+dec):
            if board[row+dec][col+dec]==color:
                return True
            elif board[row+dec][col+dec]!="":
                dec+=1
            else:
                break
    return False
def isValidMove(board,row,col,color):          #Calls the checks for the 8 directions
    if (isValidTopLeft(board,row,col,color)
    or isValidTop(board,row,col,color)
    or isValidTopRight(board,row,col,color)
    or isValidLeft(board,row,col,color)
    or isValidRight(board,row,col,color)
    or isValidBottomLeft(board,row,col,color)
    or isValidBottom(board,row,col,color)
    or isValidBottomRight(board,row,col,color)):
        return True

def makeMove(board,row,col,color):          #Actually updates the board and flips the rows
    newboard = board
    if isValidMove(board,row,col,color):
        if isValidTopLeft(board,row,col,color):     #If the top left was valid
            newboard[row-1][col-1] = color
            dec = 2
            while isWithinBounds(row-dec,col-dec):
                if board[row-dec][col-dec]==color:     #Keep on updating the anti color until it reaches the edge or another color
                    break
                elif board[row-dec][col-dec]!="":
                    board[row-dec][col-dec] = color
                    dec += 1
        if isValidTop(board,row,col,color):
            newboard[row-1][col] = color
            dec = 2
            while isWithinBounds(row-dec,col):
                if board[row-dec][col]==color:
                    break
                elif board[row-dec][col]!="":
                    newboard[row-dec][col] = color
                    dec += 1
        if isValidTopRight(board,row,col,color):
            newboard[row-1][col+1] = color
            dec = 2
            while isWithinBounds(row-dec,col+dec):
                if board[row-dec][col+dec]==color:
                    break
                elif board[row-dec][col+dec]!="":
                    newboard[row-dec][col+dec] = color
                    dec += 1
        if isValidLeft(board,row,col,color):
            newboard[row][col-1] = color
            dec = 2
            while isWithinBounds(row,col-dec):
                if board[row][col-dec]==color:
                    break
                elif board[row][col-dec]!="":
                    newboard[row][col-dec] = color
                    dec += 1
        if isValidRight(board,row,col,color):
            newboard[row][col+1] = color
            dec = 2
            while isWithinBounds(row,col+dec):
                if board[row][col+dec]==color:
                    break
                elif board[row][col+dec]!="":
                    newboard[row][col+dec] = color
                    dec += 1
        if isValidBottomLeft(board,row,col,color):
            newboard[row+1][col-1] = color
            dec = 2
            while isWithinBounds(row+dec,col-dec):
                if board[row+dec][col-dec]==color:
                    break
                elif board[row+dec][col-dec]!="":
                    newboard[row+dec][col-dec] = color
                    dec += 1
        if isValidBottom(board,row,col,color):
            newboard[row+1][col] = color
            dec = 2
            while isWithinBounds(row+dec,col):
                if board[row+dec][col]==color:
                    break
                elif board[row+dec][col]!="":
                    newboard[row+dec][col] = color
                    dec += 1
        if isValidBottomRight(board,row,col,color):
            newboard[row+1][col+1] = color
            dec = 2
            while isWithinBounds(row+dec,col+dec):
                if board[row+dec][col+dec]==color:
                    break
                elif board[row+dec][col+dec]!="":
                    newboard[row+dec][col+dec] = color
                    dec += 1
    newboard[row][col] = color
    return newboard

def getValidMoves(board,color):             #Returns a list of tuples of the coordinates of valid moves
    validmoves = []
    for row in range(8):
        for col in range(8):
            if isValidMove(board,row,col,color):
                validmoves.append((row,col))
    return validmoves

def drawBoard(board):                       #Draws the pieces that are on the board
    turtle.setworldcoordinates(-600,-400,400,600)
    turtle.tracer(0,0)
    for x in range(8):
        for y in range(8):
            if(board[x][y]!=""):
                drawToken(board,x,y)
    turtle.update()

def drawToken(board,x,y):               #Draw a single game piece
        turtle.penup()
        turtle.color(board[x][y])
        turtle.shape("circle")
        turtle.goto(-450+y*100,450-x*100)
        turtle.dot(50)


def drawSquare(x,y,distance,color):         #Draw square method for drawing board and end screen
    turtle.penup()
    turtle.goto(x,y)
    turtle.pendown()
    turtle.fillcolor(color)
    turtle.begin_fill()
    turtle.forward(distance)
    turtle.right(90)
    turtle.forward(distance)
    turtle.right(90)
    turtle.forward(distance)
    turtle.right(90)
    turtle.forward(distance)
    turtle.right(90)
    turtle.forward(distance)
    turtle.end_fill()
    turtle.penup()

def userInput(input):           #Convert the user input into coordinates on the board, regardless of their order in letter and number
    rownum = -1
    colnum = -1
    if len(input)==2:
        colvals = {"A":0,"B":1,"C":2,"D":3,"E":4,"F":5,"G":6,"H":7,}
        if input[0] in "12345678":
            rownum = 8-int(input[0])
            colnum = colvals.get(input[1].upper())
        elif input[1] in "12345678":
            rownum = 8-int(input[1])
            colnum = colvals.get(input[0].upper())
    return (rownum,colnum)

def endBoard(boardstate):       #Output the endscreen
    turtle.penup()
    turtle.hideturtle()
    turtle.speed(0)
    turtle.goto(-475,250)
    turtle.pendown()
    turtle.fillcolor("Navy")
    turtle.begin_fill()
    turtle.forward(750)
    turtle.right(90)
    turtle.forward(300)
    turtle.right(90)
    turtle.forward(750)
    turtle.right(90)
    turtle.forward(300)
    turtle.end_fill()
    turtle.penup()

    whitecount = 0
    blackcount = 0
    for row in range(8):
        for col in range(8):
            if boardstate[row][col] == "White":
                whitecount += 1
            elif boardstate[row][col] == "Black":
                blackcount += 1

    if blackcount > whitecount:
        turtle.color("Gold")
        turtle.goto(-300,100)
        turtle.write("YOU WIN!",font =  ("Ariel",50,"normal"))
    elif whitecount > blackcount:
        turtle.color("Gold")
        turtle.goto(-325,100)
        turtle.write("YOU LOSE!",font =  ("Ariel",50,"normal"))
    else:
        turtle.color("Gold")
        turtle.goto(-300,100)
        turtle.write("YOU TIE!",font =  ("Ariel",50,"normal"))

    turtle.shape("circle")              #End screen asethetics, count of black pieces
    turtle.penup()
    turtle.color("Black")
    turtle.goto(-250,50)
    turtle.dot(50)
    turtle.goto(-210,0)
    turtle.write(": ",font =  ("Ariel",50,"normal"))
    turtle.goto(-185,-10)
    turtle.write(str(blackcount),font =  ("Ariel",50,"normal"))

    turtle.color("White")              #End screen asethetics, count of white pieces
    turtle.goto(-50,50)
    turtle.dot(50)
    turtle.goto(-10,-0)
    turtle.write(": ",font =  ("Ariel",50,"normal"))
    turtle.goto(15,-10)
    turtle.write(str(whitecount),font =  ("Ariel",50,"normal"))
    turtle.update()

def main():
    baseBoard()
    boardstate = [["" for x in range(8)]for y in range(8)]      #Generates the blank board and the initial starting 4 pieces
    boardstate[3][3]="White"
    boardstate[3][4]="Black"
    boardstate[4][3]="Black"
    boardstate[4][4]="White"

    gameover = False                                        #gameover checks if the user enters a blank string or quits the prompt
    while((getValidMoves(boardstate,"Black") != [] or getValidMoves(boardstate,"White") != [] )and not gameover):
        drawBoard(boardstate)
        if getValidMoves(boardstate,"Black") != []: #While there are valid black moves left, black go
            validmovemade = False
            while not validmovemade:        #Keeps looping while the player has not made a valid move yet
                playerinput = turtle.textinput("Next Move","Enter your next move\n")
                if playerinput == None or playerinput == "":
                    gameover = True
                    break
                playerinput = userInput(playerinput)
                if playerinput in getValidMoves(boardstate,"Black"):
                    boardstate = makeMove(boardstate,playerinput[0],playerinput[1],"Black")
                    drawBoard(boardstate)
                    validmovemade = True
                else:
                    turtle.textinput("Invalid Move","Invald move was made, continue to try again")
        else:
            turtle.textinput("You have no valid moves","Your turn is skipped")
        if getValidMoves(boardstate,"White") != [] and not gameover:    #Computer's turn
            turtle.textinput("Computer's turn", "Type anything to continue")
            computerinput = selectNextPlay(boardstate)
            boardstate = makeMove(boardstate, computerinput[0], computerinput[1], "White")
            drawBoard(boardstate)
        elif not gameover:
            turtle.textinput("Computer have no valid moves", "Its your turn again")
    endBoard(boardstate) #Once the game is over, call the end board

if __name__ == '__main__':
    main()
