

import java.awt.*;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.time.Period;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.Scanner;

import java.awt.*;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.util.LinkedList;
import java.util.ListIterator;
import java.util.Scanner;

import javax.swing.JApplet;
import javax.swing.JFrame;

public class Canvas extends JApplet {

	private int height;
	private int width;
	private LinkedList<Circle> circles;
	private LinkedList<Rectangle> rectangles;
	private LinkedList<Triangle> triangles;
	private double area = 0;                                   //tracker variables for the area and perimeter
	private double perimeter =0;

	public Canvas() {
		JFrame f = new JFrame("Canvas");
		f.addWindowListener(new WindowAdapter(){
			public void windowClosing(WindowEvent e) {System.exit(0);}
		});
		height = 10000;
		width = 10000;
		f.setSize(width, height);
		f.getContentPane().add(this);
		circles = new LinkedList<Circle>();
		rectangles = new LinkedList<Rectangle>();
		triangles = new LinkedList<Triangle>();
		f.setVisible(true);
	}

	public Canvas(int h, int w) {
		JFrame f = new JFrame("Canvas");
		f.addWindowListener(new WindowAdapter(){
			public void windowClosing(WindowEvent e) {System.exit(0);}
		});
		height = h;
		width = w;
		f.setSize(width, height);
		f.getContentPane().add(this);
		circles = new LinkedList<Circle>();
		rectangles = new LinkedList<Rectangle>();
		triangles = new LinkedList<Triangle>();
		f.setVisible(true);
	}

	public synchronized void paint(Graphics g) {
		ListIterator<Circle> circItr = circles.listIterator();
		ListIterator<Rectangle> recItr = rectangles.listIterator();
		ListIterator<Triangle> triItr = triangles.listIterator();

		while (circItr.hasNext()) {
			Circle curCircle = circItr.next();
			g.setColor(curCircle.getColor());
			int curRadius = (int)curCircle.getRadius();
			g.fillOval((int)curCircle.getXPos() - curRadius, (int)curCircle.getYPos()
					- curRadius, 2 * curRadius, 2 * curRadius);

		}

		while (recItr.hasNext()) {
			Rectangle curRectangle = recItr.next();
			g.setColor(curRectangle.getColor());
			g.fillRect((int)curRectangle.getXPos(), (int)curRectangle.getYPos(),
					(int)curRectangle.getWidth(), (int)curRectangle.getHeight());
		}

		while (triItr.hasNext()) {
			Triangle curTriangle = triItr.next();
			g.setColor(curTriangle.getColor());
			Polygon po = new Polygon();
			po.addPoint((int)curTriangle.getXPos(), (int)curTriangle.getYPos());
			po.addPoint((int)(curTriangle.getXPos() + curTriangle.getWidth()), (int)curTriangle
					.getYPos());
			po.addPoint((int)(curTriangle.getXPos() + curTriangle.getWidth() / 2), (int)(curTriangle.getYPos() - curTriangle.getHeight()));
			g.fillPolygon(po);
		}
	}


	public synchronized void drawShape(Circle circ){
		circles.add(circ);
	}

	public synchronized void drawShape(Rectangle rec){
		rectangles.add(rec);
	}

	public synchronized void drawShape(Triangle tri){
		triangles.add(tri);
	}

	public synchronized void clear(){
		circles.clear();
		rectangles.clear();
		triangles.clear();
	}
	public void recursiveCircle(Circle c) {                                   //method for generating circle fractals
		area+=c.calculateArea();
		perimeter+=c.calculatePerimeter();
		drawShape(c);
		if(c.getRadius()>1)                                 //stop condition
		{
			Circle topleft = new Circle(c.getXPos()-1.5*c.getRadius()*Math.sqrt(2)/2,c.getYPos()-1.5*c.getRadius()*Math.sqrt(2)/2,c.getRadius()/2);
			Circle topright = new Circle(c.getXPos()+1.5*c.getRadius()*Math.sqrt(2)/2,c.getYPos()-1.5*c.getRadius()*Math.sqrt(2)/2,c.getRadius()/2);//top right
			Circle botleft = new Circle(c.getXPos()-1.5*c.getRadius()*Math.sqrt(2)/2,c.getYPos()+1.5*c.getRadius()*Math.sqrt(2)/2,c.getRadius()/2);   //bottom left
			Circle botright = new Circle(c.getXPos()+1.5*c.getRadius()*Math.sqrt(2)/2,c.getYPos()+1.5*c.getRadius()*Math.sqrt(2)/2,c.getRadius()/2);   // bottom right


			Color col;                               //color change portion
			if(c.getColor()==Color.RED)
				col = Color.ORANGE;
			else if(c.getColor()==Color.ORANGE)
				col=Color.YELLOW;
			else if(c.getColor()==Color.YELLOW)
				col=Color.GREEN;
			else if(c.getColor()==Color.GREEN)
				col=Color.CYAN;
			else if(c.getColor()==Color.CYAN)
				col=Color.BLUE;
			else if(c.getColor()==Color.BLUE)
				col=Color.MAGENTA;
			else
				col=Color.RED;
			topleft.setColor(col);
			topright.setColor(col);
			botleft.setColor(col);
			botright.setColor(col);

			recursiveCircle(topleft);                   //recursive portion
			recursiveCircle(topright);
			recursiveCircle(botleft);
			recursiveCircle(botright);
		}




	}
	public void recursiveRectangle(Rectangle r)                         //method for generating rectangle fractals
	{
		area+=r.calculateArea();
		perimeter+=r.calculatePerimeter();
		drawShape(r);
		if(r.getWidth()>1&&r.getHeight()>1)
		{
			Rectangle topleft = new Rectangle(r.getXPos()-r.getWidth()/2,r.getYPos()-r.getHeight()/2,r.getWidth()/2, r.getHeight()/2);    //top left
			Rectangle topright = new Rectangle(r.getXPos()+r.getWidth(),r.getYPos()-r.getHeight()/2,r.getWidth()/2,r.getHeight()/2);     //top right
			Rectangle botleft = new Rectangle(r.getXPos()-r.getWidth()/2,r.getYPos()+r.getHeight(),r.getWidth()/2,r.getHeight()/2);     //bottom left
			Rectangle botright = new Rectangle(r.getXPos()+r.getWidth(),r.getYPos()+r.getHeight(),r.getWidth()/2,r.getHeight()/2);     //bottom right



			Color col;                                           //color change portion
			if(r.getColor()==Color.RED)
				col= Color.ORANGE;
			else if(r.getColor()==Color.ORANGE)
				col=Color.YELLOW;
			else if(r.getColor()==Color.YELLOW)
				col=Color.GREEN;
			else if(r.getColor()==Color.GREEN)
				col=Color.CYAN;
			else if(r.getColor()==Color.CYAN)
				col=Color.BLUE;
			else if(r.getColor()==Color.BLUE)
				col=Color.MAGENTA;
			else
				col=Color.RED;
			topleft.setColor(col);
			topright.setColor(col);
			botleft.setColor(col);
			botright.setColor(col);

			recursiveRectangle(topleft);                     //recursive portion
			recursiveRectangle(topright);
			recursiveRectangle(botleft);
			recursiveRectangle(botright);
		}



	}

	public void recursiveTriangle(Triangle t)                          //method for generating triangle fractals
	{
		area+=t.calculateArea();
		perimeter+=t.calculatePerimeter();
		drawShape(t);
		if(t.getHeight()>1&&t.getWidth()>1)
		{
			Triangle up = new Triangle(t.getXPos() + t.getWidth(), t.getYPos(), t.getWidth() / 2, t.getHeight() / 2);             //shifted right
			Triangle left = new Triangle(t.getXPos() - t.getWidth() / 2, t.getYPos(), t.getWidth() / 2, t.getHeight() / 2);         //shifted left
			Triangle right = new Triangle(t.getXPos() + t.getWidth() / 4, t.getYPos() - t.getHeight(), t.getWidth()/ 2, t.getHeight() / 2);  //shifted up

			Color col;                                              //color change portion
			if(t.getColor()==Color.RED)
				col = Color.ORANGE;
			else if(t.getColor()==Color.ORANGE)
				col=Color.YELLOW;
			else if(t.getColor()==Color.YELLOW)
				col=Color.GREEN;
			else if(t.getColor()==Color.GREEN)
				col=Color.CYAN;
			else if(t.getColor()==Color.CYAN)
				col=Color.BLUE;
			else if(t.getColor()==Color.BLUE)
				col=Color.MAGENTA;
			else
				col=Color.RED;
			up.setColor(col);
			left.setColor(col);
			right.setColor(col);

			recursiveTriangle(up);                                 //recursive portion
			recursiveTriangle(left);
			recursiveTriangle(right);

		}

	}

	public double getArea(){
		return area;
	}
	public double getPerimeter(){
		return perimeter;
	}


}
