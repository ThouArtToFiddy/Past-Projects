
import java.awt.*;
import java.lang.Math;
import java.util.*;

public class Drawing{
    public static void main(String[]args){

        Scanner s=new Scanner(System.in);
        System.out.println("Enter \'circle\', \'triangle\', or \'rectangle\' to get a fractal of said shape");
        String shape=s.next();

        if(shape.equalsIgnoreCase("circle")){
            Canvas canvas=new Canvas(10000,10000);
            canvas.recursiveCircle(new Circle(750,400,180));
            System.out.println("Area: "+canvas.getArea()+"\nPerimeter: "+canvas.getPerimeter());
        }

        else if(shape.equalsIgnoreCase("rectangle")){
            Canvas canvas=new Canvas(10000,10000);
            canvas.recursiveRectangle(new Rectangle(500,320,200,200));
            System.out.println("Ha! Squares are rectangles too!");
            System.out.println("Area: "+canvas.getArea()+"\nPerimeter: "+canvas.getPerimeter());
        }
        else if(shape.equalsIgnoreCase("Triangle")){
            Canvas canvas=new Canvas(10000,10000);
            canvas.recursiveTriangle(new Triangle(500,800,400,400));
            System.out.println("Area: "+canvas.getArea()+"\nPerimeter: "+canvas.getPerimeter());
        }
        else{
            System.out.println("Not a valid shape!\nTry again!"); //restarts if incorrect input
            main(args);
        }

    }

}