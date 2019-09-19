class rational:
    def __init__(this,num=0,den=1):
        this.numerator = num
        if den == 0:
            this.denominator = 1
        else:
            this.denominator = den

    def __str__(this):
        if this.numerator%this.denominator == 0:
            return str(int(this.numerator/this.denominator))
        else:
            return str(this.numerator)+"/"+str(this.denominator)
