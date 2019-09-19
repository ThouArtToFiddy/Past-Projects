//Jerry Wu wu000169

public class MatrixEntry {
    private int data;
    private int row;
    private int col;
    private MatrixEntry nextRow;
    private MatrixEntry nextCol;

    /**
     *
     * @param r int row location
     * @param c int column location
     * @param d int data value
     *
     */
    public MatrixEntry(int r, int c, int d) {
        data = d;
        row = r;
        col = c;
    }

    /**
     *
     * @return int row location
     */
    public int getRow() {
        return row;
    }

    /**
     *
     * @param r int row location
     */
    public void setRow(int r) {
        row = r;
    }

    /**
     *
     * @return int row location
     */
    public int getCol() {
        return col;
    }

    /**
     *
     * @param c int column location
     */
    public void setCol(int c)
    {
        col = c;
    }

    /**
     *
     * @return int data value
     */
    public int getData()
    {
        return data;
    }

    /**
     *
     * @param d int data value
     */
    public void setData(int d)
    {
        data = d;
    }

    /**
     *
     * @return next MatrixEntry in the same column
     */
    public MatrixEntry getNextRow()
    {
        return nextRow;
    }

    /**
     * @param e MatrixEntry to be set next in row
     *
     */
    public void setNextRow(MatrixEntry e)
    {
        nextRow = e;
    }

    /**
     *
     * @return next MatrixEntry in the same row
     */
    public MatrixEntry getNextCol()
    {
        return nextCol;
    }

    /**
     *
     * @param e MatrixEntry to be set next in column
     */
    public void setNextCol(MatrixEntry e)
    {
        nextCol = e;
    }

    public String toString()
    {
        return ""+row+"\t"+col+"\t"+data;
    }



}
