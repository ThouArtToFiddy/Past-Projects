import java.awt.*;

public class Rectangle {

    private double xcoord;
    private double ycoord;
    private double width;
    private double height;
    private Color color;

    public Rectangle(double x, double y, double w, double h)
    {
        xcoord = x;
        ycoord = y;
        width = w;
        height = h;
        color = Color.RED;
    }

    public double calculatePerimeter()
    {
        return 2*(width+height);
    }

    public double calculateArea()
    {
        return width*height;
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
