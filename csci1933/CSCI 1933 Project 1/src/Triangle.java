import java.awt.*;
import java.lang.Math;
public class Triangle {

    private double xcoord;
    private double ycoord;
    private double width;
    private double height;
    private Color color;

    public Triangle(double x, double y, double w, double h)
    {
        xcoord= x;
        ycoord = y;
        width = w;
        height = h;
        color = Color.RED;
    }

    public double calculatePerimeter()
    {
        return width + 2 * Math.sqrt(Math.pow(width / 2, 2) + Math.pow(height, 2)); //base + 2 * sqrt(a^2 + b^2) a = width/2 b = height
    }

    public double calculateArea()
    {
        return 0.5*width*height;
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

    public void setHeight(double h)
    {
        height = h;
    }

    public void setWidth(double w)
    {
        width = w;
    }

    public Color getColor()
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

    public double getHeight()
    {
        return height;
    }

    public double getWidth()
    {
        return width;
    }

}
