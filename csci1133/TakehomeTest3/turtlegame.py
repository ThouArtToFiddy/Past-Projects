# <Jerry Wu wu000169>
# I understand this is a graded, individual examination that may not be
# discussed with anyone. I also understand that obtaining solutions or
# partial solutions from outside sources, or discussing
# any aspect of the examination with anyone will result in failing the course.
# I further certify that this program represents my own work and that none of
# it was obtained from any source other than material presented as part of the
# course.


#Completed everything
from turtle import *
import tkinter.messagebox
import tkinter
import random
import math
import datetime

screenMinX = -500
screenMinY = -500
screenMaxX = 500
screenMaxY = 500

class LaserBeam(RawTurtle):
    def __init__(this,canvas,x,y,direction,dx,dy):
        super().__init__(canvas)
        this.penup()
        this.goto(x,y)
        this.setheading(direction)
        this.color("Green")

        this.__lifespan = 200
        this.__dx = math.cos(math.radians(direction))*2+dx
        this.__dy = math.sin(math.radians(direction))*2+dy

        this.shape("laser")#this shape has already been registered

    def getRadius(this):
        return 4
    def getLifespan(this):
        return this.__lifespan
    def setLifespan(this,newLifespan):
        this.__lifespan = newLifespan
    def getDx(this):
        return this.__dx
    def setDx(this,newDx):
        this.__dx = newDx
    def getDy(this):
        return this.__dy
    def setDy(this,newDy):
        this.__dy = newDy

    def move(this):
        screen = this.getscreen()
        x = this.xcor()
        y = this.ycor()

        x = (this.getDx() + x - screenMinX) % (screenMaxX - screenMinX) + screenMinX
        y = (this.getDy() + y - screenMinY) % (screenMaxY - screenMinY) + screenMinY

        this.goto(x,y)
        this.setLifespan(this.getLifespan()-1)


class Ghost(RawTurtle):
    def __init__(this,canvasobj,dx,dy,x,y,size):
        RawTurtle.__init__(this,canvasobj)
        this.penup()
        this.goto(x,y)

        this.__dx = dx
        this.__dy = dy
        this.__size = size

        if this.__size==3:
            this.shape("blueghost.gif")
        elif this.__size==2:
            this.shape("pinkghost.gif")

    def getDx(this):
        return this.__dx

    def getDy(this):
        return this.__dy

    def getSize(this):
        return this.__size

    def setDx(this,newdx):
        this.__dx = newdx

    def setDy(this,newdy):
        this.__dy = newdy

    def setSize(this,newsize):
        this.__size = newsize

    #Moves the ghost from its current position to a new position
    def move(this):
        screen = this.getscreen()
        x = this.xcor()
        y = this.ycor()

        x = (this.getDx() + x - screenMinX) % (screenMaxX - screenMinX) + screenMinX
        y = (this.getDy() + y - screenMinY) % (screenMaxY - screenMinY) + screenMinY

        this.goto(x,y)

    #returns the apprximate "radius" of the Ghost object
    def getRadius(this):
        return this.getSize() * 10 - 5

class FlyingTurtle(RawTurtle):
    def __init__(this,canvasobj,dx,dy,x,y, size):
        RawTurtle.__init__(this,canvasobj)
        this.penup()
        this.color("purple")
        this.goto(x,y)

        this.__dx = dx
        this.__dy = dy
        this.__size = size

        this.shape("turtle")

    def getDx(this):
        return this.__dx

    def getDy(this):
        return this.__dy

    def getSize(this):
        return this.__size

    def setDx(this,newdx):
        this.__dx = newdx

    def setDy(this,newdy):
        this.__dy = newdy

    def setSize(this,newsize):
        this.__size = newsize

    def move(this):
        screen = this.getscreen()
        x = this.xcor()
        y = this.ycor()

        x = (this.getDx() + x - screenMinX) % (screenMaxX - screenMinX) + screenMinX
        y = (this.getDy() + y - screenMinY) % (screenMaxY - screenMinY) + screenMinY

        this.goto(x,y)

    def turboBoost(this):
        angle = this.heading()
        x = math.cos(math.radians(angle))
        y = math.sin(math.radians(angle))
        this.setDx(this.getDx() + x)
        this.setDy(this.getDy() + y)

    def stopTurtle(this):
        angle = this.heading()
        this.setDx(0)
        this.setDy(0)


    def getRadius(this):
        return 2

def main():

    # Start by creating a RawTurtle object for the window.
    firstwindow = tkinter.Tk()
    firstwindow.title("Turtle Saves the World!")
    canvas = ScrolledCanvas(firstwindow,600,600,600,600)
    canvas.pack(side = tkinter.LEFT)
    t = RawTurtle(canvas)

    screen = t.getscreen()
    screen.setworldcoordinates(screenMinX,screenMinY,screenMaxX,screenMaxY)
    screen.register_shape("blueghost.gif")
    screen.register_shape("pinkghost.gif")
    screen.register_shape("laser",((-2,-4),(-2,4),(2,4),(2,-4)))
    frame = tkinter.Frame(firstwindow)
    frame.pack(side = tkinter.RIGHT,fill=tkinter.BOTH)

    #Scoreboard
    scoreVal = tkinter.StringVar()
    scoreVal.set("0")
    scoreTitle = tkinter.Label(frame,text="Score")
    scoreTitle.pack()
    scoreFrame = tkinter.Frame(frame,height=2, bd=1, relief=tkinter.SUNKEN)
    scoreFrame.pack()
    score = tkinter.Label(scoreFrame,height=2,width=20,textvariable=scoreVal,fg="Yellow",bg="black")
    score.pack()

    #Lives
    livesTitle = tkinter.Label(frame, text="Extra Lives Remaining")
    livesTitle.pack()
    livesFrame = tkinter.Frame(frame,height=30,width=60,relief=tkinter.SUNKEN)
    livesFrame.pack()
    livesCanvas = ScrolledCanvas(livesFrame,150,40,150,40)
    livesCanvas.pack()
    livesTurtle = RawTurtle(livesCanvas)
    livesTurtle.ht()
    livesScreen = livesTurtle.getscreen()
    life1 = FlyingTurtle(livesCanvas,0,0,-35,0,0)
    life2 = FlyingTurtle(livesCanvas,0,0,0,0,0)
    life3 = FlyingTurtle(livesCanvas,0,0,35,0,0)
    lives = [life1, life2, life3]






    t.ht()

    screen.tracer(10)

    #Tiny Turtle!
    flyingturtle = FlyingTurtle(canvas,0,0,(screenMaxX-screenMinX)/2+screenMinX,(screenMaxY-screenMinY)/2 + screenMinY,3)

    #A list to keep track of all the ghosts
    ghosts = []
    #A List to keep track of all the lasers
    lasers = []

    #Create some ghosts and randomly place them around the screen
    for numofghosts in range(6):
        dx = random.random()*6  - 4
        dy = random.random()*6  - 4
        x = random.random() * (screenMaxX - screenMinX) + screenMinX
        y = random.random() * (screenMaxY - screenMinY) + screenMinY

        ghost = Ghost(canvas,dx,dy,x,y,3)

        ghosts.append(ghost)

    def play():
        #start counting time for the play function
        ##LEAVE THIS AT BEGINNING OF play()
        start = datetime.datetime.now()

        #List to keep track of the dead lasers
        deadlasers = []

        #Move the turtle
        flyingturtle.move()

        #Move the lasers & ghost hit detection
        if len(lasers)>=1: #reduces lag
            for each_laser in lasers:
                each_laser.move()
                for each_ghost in ghosts:
                    if(intersect(each_laser,each_ghost)):
                        each_laser.setLifespan(0)
                        each_ghost.hideturtle()
                        ghosts.remove(each_ghost)
                        #Scoring section
                        scoreVal.set(str(int(scoreVal.get())+20))
                        continue #reduces lag


                if each_laser.getLifespan() <= 0:
                    deadlasers.append(each_laser)
                    lasers.remove(each_laser)


        for each_laser in deadlasers:
            each_laser.hideturtle()
            each_laser.goto(-screenMinX*2,-screenMaxY*2)
            #reduces lag
            deadlasers.remove(each_laser)


        #Move the ghosts
        for each_ghost in ghosts:
            each_ghost.move()
            #Ghost collision with tiny
            if intersect(each_ghost,flyingturtle):
                lives.pop().hideturtle()
                each_ghost.hideturtle()
                ghosts.remove(each_ghost)
                tkinter.messagebox.showwarning( "Uh-Oh","You Lost a Life!")

        #Check if game is over
        if len(ghosts) == 0:
            tkinter.messagebox.showinfo("You Win!!", "You saved the world!")
            return
        if len(lives) == 0:
            tkinter.messagebox.showinfo("You Lost!!", "You doomed us all!")
            return

        #stop counting time for the play function
        ##LEAVE THIS AT END OF ALL CODE IN play()
        end = datetime.datetime.now()
        duration = end - start

        millis = duration.microseconds / 1000.0

        # Set the timer to go off again
        screen.ontimer(play,int(10-millis))



    # Set the timer to go off the first time in 5 milliseconds
    screen.ontimer(play, 5)

    #Turn turtle 7 degrees to the left
    def turnLeft():
        flyingturtle.setheading(flyingturtle.heading()+7)

    #Turn turtle 7 degrees to the right
    def turnRight():
        flyingturtle.setheading(flyingturtle.heading()-7)

    #turboBoost turtle
    def forward():
        flyingturtle.turboBoost()

    #stop Turtle
    def stop():
        flyingturtle.stopTurtle()

    #Fire the laser!
    def fireLaser():
        newLaser = LaserBeam(canvas, flyingturtle.xcor(),flyingturtle.ycor(),flyingturtle.heading(),flyingturtle.getDx(),flyingturtle.getDy())
        lasers.append(newLaser)

    #Call functions above when pressing relevant keys
    screen.onkeypress(turnLeft,"Left")
    screen.onkeypress(turnRight,"Right")
    screen.onkeypress(forward,"Up")
    screen.onkeypress(stop, "Down")
    screen.onkeypress(fireLaser,"")


    screen.listen()
    tkinter.mainloop()

 #Check for intersections
def intersect(obj1, obj2):
    distance = math.sqrt((obj2.xcor()-obj1.xcor())**2+(obj2.ycor()-obj1.ycor())**2)
    if distance <= obj1.getRadius()+obj2.getRadius():
        return True
    else:
        return False

if __name__ == "__main__":
    main()
