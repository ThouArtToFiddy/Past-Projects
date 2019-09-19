#-------------------------------------------------------------------------------
# Name:        module2
# Purpose:
#
# Author:      wuhtc
#
# Created:     17/10/2018
# Copyright:   (c) wuhtc 2018
# Licence:     <your licence>
#-------------------------------------------------------------------------------

def main():
    print(maxValue(12454012834819234712))
    print(reverseNum(12341234098017240))

def reverseNum(n):
    if n < int(len(str(n))):  #base case
        return n
    else:
        return 10**(len(str(n))-1)*int(str(n)[-1])+reverseNum(n//10)  #reduction step


def maxValue(vals):
    if vals < 10:    #base case
        return vals
    elif int(str(vals)[-1])>maxValue(vals//10):     #comparison
            return int(str(vals)[-1])
    else:
            return maxValue(vals//10)           #reduction


if __name__ == "__main__":
    main()
