//Jerry Wu wu000169

public class SparseIntMatrixMain {
    public static void main(String []args)
    {
        /**
         * Test 1
         */
        SparseIntMatrix matrix1 = new SparseIntMatrix(800,800,"matrix1_data.txt");
        MatrixViewer.show(matrix1);


        /**
         * Test 2
         * it will take a lot of time to load
         */
        SparseIntMatrix matrix2Data = new SparseIntMatrix(800,800,"matrix2_data.txt");
        SparseIntMatrix matrix2Noise = new SparseIntMatrix(800,800,"matrix2_noise.txt");
        MatrixViewer.show(matrix2Data);
        matrix2Data.minus(matrix2Noise);
        MatrixViewer.show(matrix2Data);


    }


}
