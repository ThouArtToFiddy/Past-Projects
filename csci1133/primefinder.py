#-------------------------------------------------------------------------------
# Name:        module1
# Purpose:
#
# Author:      wuhtc
#
# Created:     26/09/2018
# Copyright:   (c) wuhtc 2018
# Licence:     <your licence>
#-------------------------------------------------------------------------------

def isPrime(n):
    x = 2
    while x < n:
        if n % x == 0:
            return False
        x+=1
    return True








def main(n):
    x = range(1,n)
    answer = []
    for term in x:
        if(isPrime(term)):
            answer.append(term)
    print (answer)
    print(len(answer))
if __name__ == '__main__':






    x = input("enter the number that you want your primes up to")
    main(int(x))
