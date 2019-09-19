import java.awt.*;
import java.lang.Math;



public class Ball extends Circle{

    private double xspeed;
    private double yspeed;


    public Ball (double x, double y, double r, Color c) {
        super(x, y, r);
        super.color = c;

    }

   public void setSpeedX(double s)
   {
       xspeed = s;
   }

   public void setSpeedY(double s)
   {
       yspeed = s;
   }

   public double getSpeedX()
   {
       return xspeed;
   }

   public double getSpeedY()
   {
       return yspeed;
   }


   public void updatePosition(double t)
   {
       x = x + xspeed*t;
       y = y + yspeed*t;
   }

   public boolean intersect (Ball otherball)
   {
       if(Math.sqrt(Math.pow(super.x-otherball.getXPos(),2)+Math.pow(super.y-otherball.getYPos(),2))<=super.r+otherball.getRadius())
       {
           //This line checks to make sure the balls are not stuck in each other by comparing their locations with their direction of movement
           if((x<=otherball.getXPos()&&(xspeed>=0)||x>=otherball.getXPos()&&xspeed<=0)||(y<=otherball.getYPos()&&yspeed>=0||y>=otherball.getYPos()&&yspeed<=0)) //prevents balls from getting stuck in each other
           {
                   return true;
           }
       }
       return false;
   }




   public void collide(Ball otherball)      //Since I was bad at math I just translated the steps into pseudo code and then into Java
   {
       if(intersect(otherball))
       {
           double distance = Math.sqrt(Math.pow(x-otherball.getXPos(),2)+Math.pow(y-otherball.getYPos(),2)); // step 1

           double deltaX = (x-otherball.getXPos()) / distance;                //step 2
           double deltaY = (y-otherball.getYPos()) / distance;

           double newColVelocityi = xspeed * deltaX + yspeed * deltaY;          //step 3
           double newNormVelocityi = -1 * xspeed  *deltaY + yspeed * deltaX;
           double newColVelocityj = otherball.getSpeedX() * deltaX + otherball.getSpeedY() * deltaY;
           double newNormVelocityj = -1 * otherball.getSpeedX() * deltaY + otherball.getSpeedY() * deltaX;

           double swap = newColVelocityi;           //step 4
           newColVelocityi = newColVelocityj;
           newColVelocityj = swap;

           xspeed = newColVelocityi * deltaX - newNormVelocityi * deltaY;     //step 5
           yspeed = newColVelocityi * deltaY + newNormVelocityi * deltaX;
           otherball.setSpeedX(newColVelocityj * deltaX - newNormVelocityj * deltaY);
           otherball.setSpeedY(newColVelocityj * deltaY + newNormVelocityj * deltaX);


           if(otherball.getColor()==Color.RED||color==Color.RED)    //Color infection
           {
               otherball.setColor(Color.RED);
               setColor(Color.RED);
           }

       }
   }
}

