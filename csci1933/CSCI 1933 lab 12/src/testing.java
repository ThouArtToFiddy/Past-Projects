public class testing extends testing2{
    private int var3;
    private int var4;
    public testing()
    {
        super();

    }
    public String mysteryfoo(int var1, int var2)
    {
        return "new function";
    }

    public static void main(String[]args)
    {
        testing t = new testing();
        System.out.println(t.mysteryfoo(1,2));
        System.out.println(t.mysteryfoo(1,2,3));
    }
}
