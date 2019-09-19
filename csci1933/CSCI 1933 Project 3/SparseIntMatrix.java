/**
Jerry Wu wu000169

A) For a square matrix of N x N elements with m non-zero elements, the SparseIntMatrix should require around 5 (for each Matrix Entry) *
 m (number of non zero elements) memory, as it does not need memory to store elements with zero in them.
 The standard 2D array should require N * N units of memory regardless how many m there are, as the 2D array takes up a predetermined size.

 B) The SparseIntMatrix is more space efficient in the case of N = 100,000 m = 1,000,000, as it will only take 500,000 units of memory,
 while the regular 2d array will take N * N or 10,000,000,000 units of memory. Only when m reaches 10,000,000,000/5 or 2 billion does the
 2d array become as memory efficient.

*/
import java.io.*;
import java.util.*;

public class SparseIntMatrix {
    private MatrixEntry[] colHeads;
    private MatrixEntry[] rowHeads;
    private int rows;
    private int cols;
    /**
     *
     * @param numRows int number of rows of SparseIntMatrix
     * @param numCols int number of columns of SparseIntMatrix
     */
    public SparseIntMatrix(int numRows, int numCols)
    {
        rows = numRows;
        cols = numCols;
        colHeads = new MatrixEntry[numCols];
        rowHeads = new MatrixEntry[numRows];
    }
    /**
     *
     * @param numRows int number of rows of SparseIntMatrix
     * @param numCols int number of columns of SparseIntMatrix
     * @param inputFile String name of file to read
     */
    public SparseIntMatrix(int numRows, int numCols, String inputFile)
    {
        rows = numRows;
        cols = numCols;
        colHeads = new MatrixEntry[numCols];        //creates 2 800 long MatrixEntry lists that acts as heads for linked lists
        rowHeads = new MatrixEntry[numRows];        //default is null

        File file = new File(inputFile);
        try {
            Scanner s = new Scanner(file);
            for(int i = 0; i<numRows*numCols;i++)
            {
                String nextLine = s.nextLine();
                String[] lineArray = nextLine.split(",");
                setElement(Integer.parseInt(lineArray[0]),Integer.parseInt(lineArray[1]),Integer.parseInt(lineArray[2]));
            }
        }
        catch(FileNotFoundException e)
        {
            System.out.println("Error with file name");
        }
    }
    /**
     *
     * @return int total number of columns of the value being stored
     */
    public int getNumCols()
    {
        return cols;
    }
    /**
     *
     * @return int total number of rows of the value being stored
     */
    public int getNumRows()
    {
        return rows;
    }
    /**
     *
     * @param row int row number to get the element at
     * @param col int column number to get the element at
     * @return  int data value of the element
     */
    public int getElement(int row, int col)
    {
        if(colHeads[col]==null||rowHeads[row]==null)    //If either of the rows didn't already exists, the value is 0
        {
            return 0;
        }
        else
        {
            MatrixEntry current = colHeads[col];
            while(current!=null)   //Keeps on iterating through the LList as long as the next element exists
            {
                if(current.getRow()==row)      //If the next element's row value matches, return it
                {
                    return current.getData();
                }
                else
                {
                     current = current.getNextRow();
                }
            }
            return 0;
        }
    }
    /**
     *
     * @param row int row number to set element at
     * @param col int column number to set element at
     * @param data int value to set
     * @return  boolean whether the operation was successful
     */
    public boolean setElement(int row, int col, int data) {
        if (row >= rows || row <0 || col >= cols || col <0)  //Checks to make sure its within bounds
        {
            return false;
        }
        else
        {
            MatrixEntry newEntry = new MatrixEntry(row,col,data);
            if(colHeads[col]==null)         //Does the columns first, checks to see if there is a LList at that column head index yet
            {
                colHeads[col]=newEntry;
            }
            else
            {
                MatrixEntry current = colHeads[col];
                while(current.getNextRow()!=null&&current.getNextRow().getRow()>row) //While there is a next element,
                {                                                                    //and that the row number has not gone too far
                    current = current.getNextRow();
                }
                if (current.getNextRow()==null)         //In the case that the newEntry belongs at the end of the LList
                {
                    current.setNextRow(newEntry);
                }
                else                    //In the case that the newEntry belongs in the middle of the LList
                {
                    MatrixEntry oldNext = current.getNextRow();
                    current.setNextRow(newEntry);
                    newEntry.setNextRow(oldNext);
                }
            }

            if(rowHeads[row]==null)             //Row head section, checks if there was an entry at that row before
            {
                rowHeads[row]=newEntry;
            }
            else
            {
                MatrixEntry current = rowHeads[row];
                while(current.getNextCol()!=null&&current.getNextCol().getCol()>col)
                {
                    current = current.getNextCol(); //Iterates through till the end or until it gets where its supposed to
                }
                if (current.getNextCol()==null)     //If it reaches the end
                {
                    current.setNextCol(newEntry);
                }
                else            //If it is in the middle of the LList
                {
                    MatrixEntry oldNext = current.getNextCol();
                    current.setNextCol(newEntry);
                    newEntry.setNextCol(oldNext);
                }
            }
            return true;
        }
    }
    /**
     *
     * @param row int row to remove element at
     * @param col int column to remove element at
     * @param data  int data to check against the removed data
     * @return  boolean whether the operation was successful
     */
    public boolean removeElement(int row, int col, int data)
    {
        if (row >= rows || row <0 || col >= cols || col <0)     //Ensures that the Element being removed is within bounds
        {
            return false;
        }
        if(getElement(row,col)!=data)               //Ensures that the data matches
        {
            return false;
        }
        else
        {
            if(colHeads[col]!=null)             //Unlinks the column first, if the column is empty, leave it alone
            {
                MatrixEntry current = colHeads[col];
                while(current.getNextRow()!=null&&current.getNextRow().getRow()>row) //finds the place to remove
                {
                    current = current.getNextRow();
                }
                if (current.getNextRow()!=null) //if its already empty leave it alone
                {
                    MatrixEntry newNext = current.getNextRow().getNextRow();
                    current.setNextRow(newNext);
                }
            }
            if(rowHeads[row]!=null)              //Unlinks the row next, if the row is empty, leave it alone
            {
                MatrixEntry current = rowHeads[row];
                while(current.getNextCol()!=null&&current.getNextCol().getCol()>col)    //finds the place to remove
                {
                    current = current.getNextCol();
                }
                if (current.getNextCol()!=null)  //if its already empty leave it alone
                {
                    MatrixEntry newNext = current.getNextCol().getNextCol();
                    current.setNextCol(newNext);
                }
            }
            return true;
        }
    }
    /** This method is for the plus and minus methods
     *
     * @param row int row to get MatrixEntry at
     * @param col int col to get MatrixEntry at
     * @return MatrixEntry reference at the row,col location
     */
    public MatrixEntry getEntry(int row, int col)
    {
        if(colHeads[col]==null||rowHeads[row]==null)    //If either of the rows didn't already exists, the value is 0
        {
            return null;
        }
        else
        {
            MatrixEntry current = colHeads[col];
            while(current!=null)   //Keeps on iterating through the LList as long as the next element exists
            {
                if(current.getRow()==row)      //If the next element's row value matches, return it
                {
                    return current;
                }
                else
                {
                    current = current.getNextRow();
                }
            }
            return null;
        }
    }
    /**
     *
     * @param otherMat SparseIntMatrix to be added onto current one
     * @return  whether the dimensions of both matrices matched
     */
    public boolean plus (SparseIntMatrix otherMat)
    {
        if(otherMat.getNumCols()!=cols || otherMat.getNumRows()!=rows)
        {
            return false;
        }
        for(int i = 0; i < rows; i++)
        {
            for (int j = 0; j<cols; j++)
            {
                getEntry(i,j).setData(getElement(i,j)+otherMat.getElement(i,j));
            }
        }
        return true;

    }
    /**
     *
     * @param otherMat SparseIntMatrix to be subtracted from current one
     * @return  whether the dimensions of both matrices matched
     */
    public boolean minus (SparseIntMatrix otherMat)
    {
        if(otherMat.getNumCols()!=cols || otherMat.getNumRows()!=rows)
        {
            return false;
        }
        for(int i = 0; i < rows; i++)
        {
            for (int j = 0; j<cols; j++)
            {
                getEntry(i,j).setData(getElement(i,j)-otherMat.getElement(i,j));
            }
        }
        return true;

    }


}
