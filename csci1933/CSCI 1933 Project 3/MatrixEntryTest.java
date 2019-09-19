//Jerry Wu wu000169

import static org.junit.Assert.*;
import org.junit.Test;


public class MatrixEntryTest{
    private MatrixEntry m = new MatrixEntry(0,0,10);

    /**
     * Tests the basic functionalities of the MatrixEntry class
     */
    @Test
    public void testGetData(){
        assertEquals(10,m.getData());
        assertEquals(0,m.getRow());
        assertEquals(0,m.getCol());
    }

    @Test
    public void testSetData(){
        m.setCol(5);
        m.setRow(10);
        m.setData(0);
        assertEquals(10,m.getRow());
        assertEquals(5,m.getCol());
        assertEquals(0,m.getData());
    }

    @Test
    public void testSetandGetNextRow(){
        m.setNextRow(new MatrixEntry(1,0,10));
        assertEquals(m.getData(),m.getNextRow().getData());

    }

    @Test
    public void testSetandGetNextCol(){
        m.setNextCol(new MatrixEntry(0,1,10));
        assertEquals(m.getData(),m.getNextCol().getData());
    }



}
