def matrix(n, init):
    m = [[init for _ in range(n)]for _ in range(n)]
    return m

def matrix2(n, init):
    m = []
    for x in range(n):
        z = []
        for y in range(n):
            z.append(init)
        m.append(z)
    return m

def order(m):
    order = str(len(m))
    return order + " X " + order



def main():
    x = matrix(5,1)
    print(x)
    print(order(x))



if __name__ == "__main__":
    main()

