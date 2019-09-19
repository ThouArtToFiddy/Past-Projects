import random

def createfile():
    name = input("Enter the name of the file")
    file = open(name,'w')
    linenum = 0
    for x in range(1000):
        linenum+=1
        file.write(str(linenum)+","+str(random.randint(-1000,1000))+"\n")
    file.close()

def main():
    createfile()

if __name__ == '__main__':
    main()
