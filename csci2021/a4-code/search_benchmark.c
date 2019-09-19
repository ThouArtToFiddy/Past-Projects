#include <stdlib.h>
#include <time.h>
#include <string.h>
#include <stdio.h>
#include "search.h"

int power(int b, int p){  //power function because make file does not like math.h for some reason
  int res = 1;
  for (int i = 0; i < p; i++){
    res = res * b;
  }
  return res;
}

void failcase(){    //function to save typing this 3 times
  printf("which is a combination of:\n"
  "a : Linear Array Search\n"
  "l : Linear List Search\n"
  "b : Binary Array Search\n"
  "t : Binary Tree Search\n"
  "(default all)\n");
}

int main(int argc, char *argv[]){
  if (argc <= 3||argc >= 6){
    printf("usage: %s <minpow> <maxpow> <repeats> [which]\n",argv[0]);
    failcase();
    return 0;
  }
  int minpow = atoi(argv[1]);
  int maxpow = atoi(argv[2]);
  int repeats = atoi(argv[3]);

  if(minpow <= 0||maxpow <= minpow||repeats<=0){ //checks for invalid arguments
    printf("usage: %s <minpow(>=1)> <maxpow(>minpow)> <repeats(>=1)> [which]\n",argv[0]);
    failcase();
    return 0;
  }
  int hasa = 1; //tracking variables to see which to run
  int hasl = 1;
  int hasb = 1;
  int hast = 1;

  if (argc == 5) {//case that the user does specify which ones to test
    hasa = 0;   //has to reset to all 0s when they do specify
    hasl = 0;
    hasb = 0;
    hast = 0;
    char *which = argv[4];
    for (int i = 0; which[i] != '\0'; i++){  //c not having strings or .contains sucks
      if (which[i] == 'a'){
        hasa = 1;
      }
      else if (which[i]=='l'){
        hasl = 1;
      }
      else if (which[i]=='b'){
        hasb = 1;
      }
      else if (which[i]=='t'){
        hast = 1;
      }
      else{                             //case they enter something other than a l b t
        printf("usage: %s <minpow> <maxpow> <repeats> [which]\n",argv[0]);
        failcase();
        return 0;
      }
    }
  }

  printf ("Length\tSearches");  //title line
  if (hasa){
    printf("\tarray\t");
  }
  if (hasl){
    printf("\tlist\t");
  }
  if (hasb){
    printf("\tbinary\t");
  }
  if (hast){
    printf("\ttree");
  }
  printf("\n");

  for (int i = 0; i < maxpow-minpow+1;i++){  //for each line in the output
    int length = (int)(power (2,minpow) * power(2,i));
    printf ("%d\t",length);
    printf ("%d\t",length*2*repeats);

    if(hasa) {                    //linear array case
      int *arr = make_evens_array(length);
      clock_t begin, end;
      begin = clock();
      for(int time = 0; time < repeats; time ++){   // number of repeats
        for (int n = 0; n < length*2; n++){         //over the whole range
          linear_array_search(arr,length,n);
        }
      }
      end = clock();
      double time = ((double) (end - begin)) / CLOCKS_PER_SEC;
      free(arr);
      printf("\t%.4e",time);
    }

    if(hasl){                    //linked list case
      list_t *lst = make_evens_list(length);
      clock_t begin, end;
      begin = clock();
      for(int time = 0; time < repeats; time ++){   //repeats
        for (int n = 0; n < length*2; n++){         //over the whole range
          linkedlist_search(lst,length,n);
        }
      }
      end = clock();
      list_free(lst);
      double time = ((double) (end - begin)) / CLOCKS_PER_SEC;

      printf("\t%.4e",time);
    }

    if(hasb){                  //binary search case
      int *arr = make_evens_array(length);
      clock_t begin, end;
      begin = clock();
      for(int time = 0; time < repeats; time ++){   //repeats
        for (int n = 0; n < length*2; n++){         //over the whole range
            binary_array_search(arr,length,n);
        }
      }
      end = clock();
      double time = ((double) (end - begin)) / CLOCKS_PER_SEC;
      free(arr);
      printf("\t%.4e",time);
    }

    if(hast){               //binary tree case
      bst_t *tree = make_evens_tree(length);
      clock_t begin, end;
      begin = clock();
      for(int time = 0; time < repeats; time ++){   //repeats
        for (int n = 0; n < length*2; n++){         //over the whole range
          binary_tree_search(tree,length,n);
        }
      }
      end = clock();
      bst_free(tree);
      double time = ((double) (end - begin)) / CLOCKS_PER_SEC;

      printf("\t%.4e",time);
    }
    printf("\n");             //onto next line
  }
  return 0;
}
