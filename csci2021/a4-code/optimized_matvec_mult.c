#include "matvec.h"
#include <stdlib.h>

int optimized_matrix_trans_mult_vec(matrix_t mat, vector_t vec, vector_t res){
  if(mat.rows != vec.len){
    printf("mat.rows (%ld) != vec.len (%ld)\n",mat.rows,vec.len);
    return 1;
  }
  if(mat.cols != res.len){
    printf("mat.cols (%ld) != res.len (%ld)\n",mat.cols,res.len);
    return 2;
  }
  for(int i=0;i<mat.cols;i++){  //reset result vector_t
    VSET(res,i,0);
  }

  for(int i=0; i<mat.rows; i++){ //row by column access
      int veci = VGET(vec,i);

    for(int j=0; j<mat.cols; j+=4){ //pipelining by 4
      int elij = MGET(mat,i,j);
      int prod = elij * veci;
      int curr = VGET(res,j);
      int next = curr + prod;
      VSET(res,j, next);        // add on the newest product

      elij = MGET(mat,i,j+1);
      prod = elij * veci;
      curr = VGET(res,j+1);
      next = curr + prod;
      VSET(res,j+1, next);        // add on the newest product

      elij = MGET(mat,i,j+2);
      prod = elij * veci;
      curr = VGET(res,j+2);
      next = curr + prod;
      VSET(res,j+2, next);        // add on the newest product

      elij = MGET(mat,i,j+3);
      prod = elij * veci;
      curr = VGET(res,j+3);
      next = curr + prod;
      VSET(res,j+3, next);        // add on the newest product
    }
  }
  return 0;
}
