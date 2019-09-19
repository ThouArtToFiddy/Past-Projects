import java.awt.*;
import java.awt.event.KeyEvent;
import java.io.IOException;
import java.util.*;

public class BallScreenSaver extends AnimationFrame{

    private int saveCounter =0;
    private int numball;
    private final int BORDER = 30;
    private CollisionLogger collisionLogger;
    private Ball[] b;                                                                       //the array of Ball objects
    public BallScreenSaver(int windowwidth, int windowheight, String name, int n)
    {
        super(windowwidth,windowwidth,name);
        numball = n;
        collisionLogger = new CollisionLogger(windowwidth,windowheight,20);        //ColisionLogger for heatmap
        b = new Ball[numball];


        for (int i = 0; i < numball; i++)                                                       //initialization of the Ball objects
        {
            //randomizes the starting locations of the balls
            b[i] = new Ball(randdouble(BORDER+10,windowwidth-BORDER-10),(randdouble(BORDER+10,windowheight-2*BORDER-10)),10,Color.BLUE);
            //randomizes the starting velocities of the balls
            b[i].setSpeedX(randdouble(-10,10));
            b[i].setSpeedY(randdouble(-10,10));
        }

        b[numball-1].setColor(Color.RED);                   //Last ball is set as red


    }

    public void action() {
        for (int i = 0; i<getFPS(); i++)
        {
            for (int j = 0; j<numball; j++)                                 //sets position
            {
                b[j].setPos(b[j].getXPos() + b[j].getSpeedX() / getFPS(), b[j].getYPos() + b[j].getSpeedY() / getFPS());
            }

            for (int j = 0; j<numball - 1 ; j++)     //checks if any balls are colliding
                {
                for(int k = j+1; k<numball ;k++)
                {
                    b[j].collide(b[k]);
                    collisionLogger.collide(b[j],b[k]);
                }
            }

            for (int j = 0; j<numball;j++) //checks if any walls are colliding, prevents getting stuck in walls as well
            {
                if(b[j].getXPos()>super.getWidth()-BORDER-b[j].getRadius()&&b[j].getSpeedX()>0||b[j].getXPos()<BORDER+b[j].getRadius()&&b[j].getSpeedX()<0)
                {
                    b[j].setSpeedX(-1 * b[j].getSpeedX());
                }

                if(b[j].getYPos()>super.getHeight()-2*BORDER-b[j].getRadius()&&b[j].getSpeedY()>0||b[j].getYPos()<BORDER-b[j].getRadius()&&b[j].getSpeedY()<0)
                {
                    b[j].setSpeedY(-1*b[j].getSpeedY());
                }

            }

        }

    }

    public void draw(Graphics g)
    {
        g.setColor(Color.BLACK);
        g.fillRect(0,0,super.getWidth(),super.getHeight());
        g.setColor(Color.WHITE);
        g.drawRect(BORDER,BORDER,super.getWidth()-BORDER*2,super.getHeight()-BORDER*2);
        for (int i = 0; i <numball; i++)

        {   g.setColor(b[i].getColor());                      //takes the center of ball -radius to get the border bound by the rectangle
            g.fillOval((int)(b[i].getXPos()-b[i].getRadius()),(int)(b[i].getYPos()+b[i].getRadius()),(int)(b[i].getRadius()*2),(int)(b[i].getRadius()*2));
        }

    }

    public int randInt(int min, int max)
    {                                                       //a utility method to get a random int between min and max.
        return (int)(Math.random()*(max-min)+min);
    }

    public double randdouble(double min, double max)
    {                                                       //a utility method to get a random double between min and max.
        return (Math.random()*(max-min)+min);
    }


    protected void processKeyEvent(KeyEvent e) {
        int keyCode = e.getKeyCode();

        /* This captures the user pressing the "p" key and prints out the current collisionLog to an image.
        	You can use this directly in your implementation. Add other cases to the if/else statement to
        	handle other key events.
        */
        if (e.getID() == KeyEvent.KEY_PRESSED && keyCode == KeyEvent.VK_P) {
            EasyBufferedImage image = EasyBufferedImage.createImage(collisionLogger.getNormalizedHeatMap());
            try {
                image.save("heatmap"+saveCounter+".png", EasyBufferedImage.PNG);
                saveCounter++;
            } catch (IOException exc) {
                exc.printStackTrace();
                System.exit(1);
            }

        }
        else if (e.getID() == KeyEvent.KEY_PRESSED && keyCode == KeyEvent.VK_LEFT) //slow down
        {
            for(int i = 0; i < numball; i++)
            {
                b[i].setSpeedX(b[i].getSpeedX()*0.9);
                b[i].setSpeedY(b[i].getSpeedY()*0.9);
            }
        }
        else if (e.getID() == KeyEvent.KEY_PRESSED &&  keyCode == KeyEvent.VK_RIGHT) //speed up
        {
            for(int i = 0; i < numball; i++)
            {
                b[i].setSpeedX(b[i].getSpeedX()*1.1);
                b[i].setSpeedY(b[i].getSpeedY()*1.1);
            }
        }
    }

    public static void main(String []args)
    {
        System.out.println("Enter the number of balls you want bouncing around");
        Scanner s = new Scanner(System.in);
        int numballs = s.nextInt();
        BallScreenSaver b = new BallScreenSaver(800,800,"Ball",numballs);
        b.start();
    }

}

