#Worked together with Petros Karypis
import random
import turtle

def neighbors(matrix, row, col):
    alives = 0
    if matrix[(row-1)%100][(col-1)%100] == 1:
        alives+=1
    if matrix[(row-1)%100][col%100] == 1:
        alives+=1
    if matrix[(row-1)%100][(col+1)%100] == 1:
        alives+=1
    if matrix[row%100][(col-1)%100] == 1:
        alives+=1
    if matrix[row%100][(col+1)%100] == 1:
        alives+=1
    if matrix[(row+1)%100][(col-1)%100] == 1:
        alives+=1
    if matrix[(row+1)%100][col%100] == 1:
        alives+=1
    if matrix[(row+1)%100][(col+1)%100] == 1:
        alives+=1
    return alives

def update(matrix):
    numneighbors = 0
    newmatrix = [x[:] for x in matrix]
    for x in range(len(matrix)):
        for y in range(len(matrix[x])):
            numneighbors = neighbors(matrix,x,y)
            if matrix[x][y] == 1 and numneighbors < 2: #underpopulation
                newmatrix[x][y] = 0
            elif matrix[x][y] == 1 and numneighbors < 4: #survival
                newmatrix[x][y] = 1
            elif matrix[x][y] == 1 and numneighbors > 3: #overcrowding death
                newmatrix[x][y] = 0
            elif matrix[x][y] == 0 and numneighbors == 3: #reproduction
                newmatrix[x][y] = 1
    return newmatrix

def life(matrix):
    t = turtle.Turtle()
    turtle.setworldcoordinates(0,0,len(matrix[0]),len(matrix))
    turtle.tracer(0,0)
    showMatrix(t,matrix)
    turtle.update()
    matrix = update(matrix)
    turtle.clearscreen()
    return matrix

def populate(n, matrix):
    m2 = [x[:] for x in matrix]
    count = (2*n)**2/10

    done = False
    while not done:
        xcor = random.randint(len(matrix)/2-n,len(matrix)/2+n)
        ycor = random.randint(len(matrix)/2-n,len(matrix)/2+n)
        if(matrix[xcor][ycor]==0):
            m2[xcor][ycor] = 1
            count-=1
        if count == 0:
            done = True
    return m2

def showMatrix(t,m):
    turtle.hideturtle()
    t.color("blue")
    t.shape("square")
    t.turtlesize(.20)
    t.speed(0)

    for x in range(len(m)):
        for y in range(len(m[0])):
            if(m[x][y]==1):
                t.penup()
                t.goto(y,x)
                t.pendown()
                t.stamp()


def main():
    times = 0

    matrix = [[0 for x in range(100)]for x in range(100)]
    matrix = populate(20,matrix)

    while times<500:
        matrix = life(matrix)
        times +=1



if __name__ == '__main__':
    main()
