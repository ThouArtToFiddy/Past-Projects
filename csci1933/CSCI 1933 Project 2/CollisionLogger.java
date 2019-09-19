import java.awt.*;
import java.util.Random;

public class CollisionLogger {
    private int width, height, bucket;
    private int[][] normalizedHeatMap;

    public CollisionLogger(int screenWidth, int screenHeight, int bucketWidth) {
    	width = screenWidth;
    	height = screenHeight;
    	bucket = bucketWidth;
    	normalizedHeatMap = new int [height/bucket][width/bucket];
        for (int i = 0; i < normalizedHeatMap.length;i++)
        {
            for (int j = 0; j < normalizedHeatMap[i].length;j++)
            {
                normalizedHeatMap[i][j]+=0;
            }
        }
    }
    public String toString(CollisionLogger collisionLogger)         //toString method for testing purposes
    {
        int[][]returned = collisionLogger.getNormalizedHeatMap();
        String s = "";
        for(int i = 0 ;i<returned.length;i++)
        {
            for ( int j = 0;j<returned[i].length;j++)
            {
                s = s + returned[i][j]+ "\t";
            }
            s += "\n";
        }
        return s;
    }

    public static void main(String []args)                                      //Main for testing purposes
    {
        CollisionLogger c = new CollisionLogger(50,100,10);



        // Have a bunch of random collisions
        for (int i = 0; i < 100; i++) {
            for (int j = 0; j < 50; j++) {
                Ball collider = new Ball(j, i, 2, Color.BLUE);
                Ball collidee = new Ball(j + 1, i + 1, 2, Color.BLUE);
                c.collide(collider, collidee);
            }
        }

        System.out.println(c.toString(c));
    }

     /**
     * This method records the collision event between two balls. Specifically, in increments the bucket corresponding to
     * their x and y positions to reflect that a collision occurred in that bucket.
     */
    public void collide(Ball one, Ball two) {
                            //checks if the two balls are colliding
        if((one.intersect(two) || two.intersect(one)))
        {                                           //Checks if the collision is out of bounds (allows for super speed by VK_RIGHT)
            if (one.getXPos()<=width&&one.getXPos()>=0&&one.getYPos()<=height&&one.getYPos()>=0
                    &&two.getXPos()<=width&&two.getXPos()>=0&&two.getYPos()<=height&&two.getYPos()>=0)
            {                                   //average position of the two balls
                normalizedHeatMap[(int) ((one.getYPos() + two.getYPos()) / 2 / bucket)][(int) ((one.getXPos() + two.getXPos()) / 2 / bucket)] += 1;
            }
        }
    }

    /**
     * Returns the heat map scaled such that the bucket with the largest number of collisions has value 255,
     * and buckets without any collisions have value 0.
     */
    public int[][] getNormalizedHeatMap() {
    	int max = -1;     //finds the maximum value in the heatmap
    	for (int i = 0; i< normalizedHeatMap.length;i++)
        {
            for(int j = 0; j< normalizedHeatMap[i].length;j++)
            {
                if(max<normalizedHeatMap[i][j])
                {
                    max = normalizedHeatMap[i][j];
                }
            }
        }





        double ratio = max/255.0;  //scaling ratio for the rest of the map

    	for (int i =0; i<normalizedHeatMap.length;i++)
        {
            for (int j = 0; j < normalizedHeatMap[i].length;j++)
            {
                normalizedHeatMap[i][j]=(int)(normalizedHeatMap[i][j]/ratio); //divide every element in the heatmap by ratio to scale to 255
            }
        }

        return normalizedHeatMap;
    }
}
