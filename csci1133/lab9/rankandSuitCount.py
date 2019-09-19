def rankandSuitCount(cards):
    rank = dict()
    suit = dict()
    for x in cards:

        if x[0] in rank:
            rank[x[0]]+=1
        else:
            rank[x[0]]=1

        if x[1] in suit:
            suit[x[1]]+=1
        else:
            suit[x[1]]=1
    return (rank,suit)
def pokerHand(cards):
    count = rankandSuitCount(cards)


def main():
    cards = ["AS","AD","2C","TH","TS"]
    count = rankandSuitCount(cards)
    print("Ranks: ",count[0])
    print("Suits: ",count[1])

if __name__ == '__main__':
    main()
