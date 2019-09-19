public class test{
    public static void main(String []args)
    {
        SparseIntMatrix test = new SparseIntMatrix(10,10);
        int count = 0;
        for(int i = 0; i < 10; i ++)
        {
            for(int j = 0; j < 10; j++)
            {
                if(test.setElement(i,j,i*10+j+1));
                {
                    count++;
                }
            }
        }
        SparseIntMatrix test2 = new SparseIntMatrix(10,10);
        int count2 = 0;
        for(int i = 0; i < 10; i ++)
        {
            for(int j = 0; j < 10; j++)
            {
                if(test2.setElement(i,j,100));
                {
                    count2++;
                }
            }
        }


        for(int i = 0; i < 10; i ++)
        {
            for(int j = 0; j < 10; j++)
            {
                System.out.print(test.getElement(i,j)+"\t");
            }
            System.out.println();
        }
        System.out.println();

        for(int i = 0; i < 10; i ++)
        {
            for(int j = 0; j < 10; j++)
            {
                System.out.print(test2.getElement(i,j)+"\t");
            }
            System.out.println();
        }
        System.out.println();

        test.plus(test2);
        for(int i = 0; i < 10; i ++)
        {
            for(int j = 0; j < 10; j++)
            {
                System.out.print(test.getElement(i,j)+"\t");
            }
            System.out.println();
        }





    }


}
