#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "tree.h"


void bst_init(bst_t *tree)
{
  tree->root = NULL;
  tree->size = 0;
}

int bst_insert(bst_t *tree, char name[])
{
  node_t *parent = NULL;
  node_t *current = tree->root;
  node_t *new = malloc(sizeof(node_t));
  strcpy(new->name,name);
  new->left = NULL;           //assign to NULL to prevent uninitialized comparison warning
  new->right = NULL;
  if (tree->root == NULL)     //checks if tree was empty originally
  {
    tree->root = new;
    tree->size++;
    return 1;
  }
//traversal to find correct location
  while (current!=NULL)
  {
    parent = current;
  if(strcmp(name,current->name)<0)
  {
    current = current->left;
  }
  else if (strcmp(name,current->name)>0)
  {
    current = current->right;
  }
  else{        //if theres a duplicate
    return 0;
  }
}
  if (strcmp(name, parent->name)<0)
  {
    parent->left = new;
  }
  else
  {
    parent->right = new;
  }

  tree->size++;
  return 1;
}

int bst_find(bst_t *tree, char name[])
{
  node_t *current = tree->root;
   while (current!=NULL)
   {
     if(strcmp(name,current->name)<0)
     {
       current = current->left;
     }
     else if (strcmp(name,current->name)>0)
     {
       current = current->right;
     }
     else   //if the name and current name is equal
     {
       return 1;
     }
   }
   return 0;

}

void bst_clear(bst_t *tree)
{
  node_remove_all(tree->root);
  tree->root = NULL;   //this one line costed me 4 hours and pounds of stress argggggggggggggggggg
  tree->size = 0;      //and the hated little brother that doesnt even matter
}

void node_remove_all(node_t *cur)
{
  if (cur == NULL)
  {
    return;
  }
  node_remove_all(cur->left);
  node_remove_all(cur->right);
  free(cur);

}

void bst_print_revorder(bst_t *tree)
{
  if(tree->root!=NULL)
  {
  node_print_revorder(tree->root,0);
}
}
void node_print_revorder(node_t *cur, int indent)  //right print left
{
    if (cur!= NULL)
    {
    node_print_revorder(cur->right, indent+2);
    for(int i = 0; i < indent; i ++)
    {
      printf(" ");
    }
    printf("%s\n",cur->name);
      node_print_revorder(cur->left, indent+2);
  }
}

void bst_print_preorder(bst_t *tree)
{
  node_write_preorder(tree->root,stdout,0);
}

void bst_save(bst_t *tree, char *fname){
  FILE *f = fopen(fname,"w");
  node_write_preorder(tree->root,f,0);
  fclose(f);                //close after saving
}

void node_write_preorder(node_t *cur, FILE *out, int depth)
{
  if(cur!=NULL)
{
    for(int i = 0; i < depth; i ++)
    {
      fprintf(out," ");
    }
    fprintf(out,"%s\n",cur->name);
    node_write_preorder(cur->left, out, depth+2);
    node_write_preorder(cur->right, out, depth+2);
  }
}
int bst_load(bst_t *tree, char *fname )
{
  FILE *f = fopen(fname,"r");
  if(!f)        //if can't find file
  {
    return 0;
  }
  bst_clear(tree);
  char newname[128];
  while(fscanf(f,"%s",newname)!=EOF)
  {
    bst_insert(tree, newname);
  }

  fclose(f); //close after loading
  return 1;
}
