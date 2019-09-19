
#include <sys/stat.h>
#include <stdlib.h>
#include <stdio.h>
int *read_text_deltas(char *fname, int *len){
  FILE *f;
  struct stat info;
  stat(fname, &info);
  int numints = 0;
  int val;
  f = fopen(fname,"r");

  if (!f){            //if the file does not exist
      *len = -1;
      return NULL;
  }
  if (info.st_size < 4 ){   //if the file is empty/too small/wrong type
    *len = -1;
    fclose (f);
    return NULL;
  }

  while (fscanf(f,"%d",&val)!=EOF)    //counting number of ints
  {
    numints++;
  }
  *len = numints;

  rewind(f);
  int *arr =  malloc(numints * sizeof(int));  //allocation of size

  fscanf(f,"%d",&val);
  arr[0] = val;
  for (int i = 1; i < numints; i++ ){
    fscanf(f,"%d",&val);
    arr[i] = arr[i-1]+val;
  }
  fclose(f); //close
  return arr;
}
////////////////////////////////////////////////////////////////////////////////
int *read_int_deltas(char *fname, int *len)
{

  FILE *f;
  f = fopen(fname,"r"); //open file

  if (f == NULL){   //checks to make sure file is there
      *len = -1;
      return NULL;
  }

  struct stat info;
  stat(fname, &info);

  if (info.st_size < 4 ){  //makes sure correct type and is not empty
    *len = -1;
    fclose (f);
    return NULL;
  }

  *len = info.st_size/4;

  int *arr =  malloc(*len * 4);   //allocating space for new arr
  int temp = 0;
  fread(&temp, sizeof(int), 1, f);
  arr[0] = temp;
  for (int i = 1; i < *len; i++ ){
   fread(&temp, sizeof(int), 1, f);
    arr[i] = arr[i-1]+temp;
  }

  fclose(f);  //close


  return arr;
}
///////////////////////////////////////////////////////////////////////////////////
int *read_4bit_deltas(char *fname, int *len)
{
  return (int*)-1;
}
