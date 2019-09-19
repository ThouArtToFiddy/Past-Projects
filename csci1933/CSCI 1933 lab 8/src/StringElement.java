


public class StringElement <Integer extends Comparable> implements Comparable<Integer>{
    private String s;
    private Integer number;
    public StringElement(Integer i, String string)
    {
        s = string;
        number = i;
    }

    public String toString(){
        return this.s;
    }
    public String getString(){
        return s;
    }
    public Integer getNumber(){
        return number;
    }

    public int compareTo(Integer num)
    {
       return number.compareTo(num);
    }
}
