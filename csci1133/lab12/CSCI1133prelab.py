import turtle




def main():
    myt = turtle.Turtle()
    def mouseInput(x,y):
        print(x,",",y)

    scr = myt.getscreen()
    scr.onclick(mouseInput)

    scr.listen()


    myt.penup()
    myt.goto(40,40)
    myt.circle(100)
    myt.pendown()
    myt.fillcolor("red")
    myt.begin_fill()
    myt.circle(100)
    myt.end_fill()

    myt.penup()
    myt.goto(-50,50)
    myt.pendown()
    myt.fillcolor("blue")
    myt.begin_fill()
    for i in range(4):
        myt.forward(100)
        myt.right(90)
    myt.end_fill()




if __name__ == "__main__":
    main()
