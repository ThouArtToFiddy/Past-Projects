#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "deltas.h"

void print_graph(int *data, int len, int max_height){
int max = data[0];
int min = data[0];
for (int i = 1; i < len; i++)  //finds actual max and min
{
  if (data[i]>max)
  {
    max = data[i];
  }
  if (data[i]<min)
  {
    min = data[i];
  }
}
int range = max - min;
float units_per_height = range/(float)max_height;
printf("length: %d\n", len);
printf("min: %d\n", min);
printf("max: %d\n", max);
printf("range: %d\n", range);
printf("max_height: %d\n", max_height);
printf("units_per_height: %.2f\n", units_per_height);

printf("     ");            //spacers for the top part
for(int i = 0; i < len; i++)
{
  if (i % 5 == 0)
  {
    printf("+");
  }
  else
  {
    printf("-");
  }
}
printf("\n");
//Top ^^
for (int i = 0; i <= max_height; i++)              //meat of the graph
{
  printf("%3d |",(int)(max-i*units_per_height));
  for(int j = 0; j < len; j++)
  {
      if(data[j]>=(int)(max-i*units_per_height))
      {
        printf("X");
      }
      else
      {
        printf(" ");
      }

  }
  printf("\n");
}


//Bottom vv
printf("     ");
for(int i = 0; i < len; i++)
{
  if ( i% 5 == 0)
  {
    printf("+");
  }
  else
  {
    printf("-");
  }
}
printf("\n     ");
for (int i = 0; i < len; i++)
{
  if (i % 5 == 0)
  {
    printf("%-5d",i);
  }
}
}
