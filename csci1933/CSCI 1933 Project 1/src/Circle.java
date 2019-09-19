import java.lang.Math;
import java.awt.*;

public class Circle {

    private double xcoord;
    private double ycoord;
    private double radius;
    private Color color;

    public Circle (double x, double y, double r)
    {
        xcoord = x;
        ycoord = y;
        radius = r;
        color = Color.RED;
    }

    public double calculatePerimeter()
    {
        return 2*radius*Math.PI;
    }

    public double calculateArea()
    {
        return radius*radius*Math.PI;
    }

    public void setColor(Color c)
    {
        color = c;
    }

    public void setPos(double x, double y)
    {
        xcoord = x;
        ycoord = y;
    }

    public void setRadius(double r)
    {
        radius = r;
    }

    public Color getColor ()
    {
        return color;
    }
    public double getXPos()
    {
        return xcoord;
    }

    public double getYPos()
    {
        return ycoord;
    }

    public double getRadius()
    {
        return radius;
    }





}
