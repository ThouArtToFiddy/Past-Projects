def convert(s):
    s = s.upper()
    conversion = {"A":".-","B":"-...","C":"-.-.","D":"-..","E":".","F":"..-.","G":"--.","H":"....","I":"..","J":".---","K":"-.-","L":".-..","M":"--","N":"-.","O":"---","P":".--.","Q":"--.-","R":".-.","S":"...","T":"-","U":"..-","V":"...-","W":".--","X":"-..-","Y":"-.--","Z":"--.."}
    converted = ""

    for x in s:
        if x in conversion:
            converted = converted +conversion[x]+" "
    return converted

def main():
    print(convert(input("Enter a phrase: \n")))

if __name__ == '__main__':
    main()
