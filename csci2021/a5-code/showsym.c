// Template for parsing an ELF file to print its symbol table. You are
// free to rename any variables that appear below as you see fit.
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include <elf.h>

int DEBUG = 0;                  // controls whether to print debug messages

int main(int argc, char *argv[]){
  if(argc < 2){
    printf("usage: %s [-d] <file>\n",argv[0]);
    return 0;
  }

  char *objfile_name = argv[1];

  // check for debug mode
  if(argc >=3){
    if(strcmp("-d",argv[1])==0){ // command line arg -d enables debug printing
      DEBUG = 1;
      objfile_name = argv[2];
    }
    else{
      printf("incorrect usage\n");
      return 1;
    }
  }

  // Open file descriptor and set up memory map for objfile_name
  // memory map a file
  int fd = open(objfile_name, O_RDONLY); // open file to get file descriptor
  struct stat stat_buf;
  fstat(fd, &stat_buf);                      // get stats on the open file such as size
  int size = stat_buf.st_size;               // size for mmap()'ed memory is size of file
  char *file_chars =                         // pointer to file contents
    mmap(NULL, size, PROT_READ, MAP_PRIVATE, // call mmap with given size and file descriptor
         fd, 0);                             // read only, not shared, offset 0

  // CREATE A POINTER to the intial bytes of the file which are an ELF64_Ehdr struct
  Elf64_Ehdr *ehdr = (Elf64_Ehdr *) file_chars;  //this throws away the rest of the file_chars




  // CHECK e_ident field's bytes 0 to for for the sequence {0x7f,'E','L','F'}.
  // Exit the program with code 1 if the bytes do not match
  if (ehdr->e_ident[EI_MAG0] != 0x7f || ehdr->e_ident[EI_MAG1]!= 'E' ||
      ehdr->e_ident[EI_MAG2] != 'L'  || ehdr->e_ident[EI_MAG3]!= 'F'){
    printf("Magic bytes wrong, this is not an ELF file\n");
    return 1;
  }

  // PROVIDED: check for a 64-bit file
  if(ehdr->e_ident[EI_CLASS] != ELFCLASS64){
    printf("Not a 64-bit file ELF file\n");
    return 1;
  }

  // PROVIDED: check for x86-64 architecture
  if(ehdr->e_machine != EM_X86_64){
    printf("Not an x86-64 file\n");
    return 1;
  }

  // DETERMINE THE OFFSET of the Section Header Array (e_shoff), the
  // number of sections (e_shnum), and the index of the Section Header
  // String table (e_shstrndx). These fields are from the ELF File
  // Header.
  Elf64_Off sha_offset = ehdr->e_shoff;
  int num_secs = ehdr->e_shnum;
  int shst_index = ehdr->e_shstrndx;


  // Set up a pointer to the array of section headers. Use the section
  // header string table index to find its byte position in the file
  // and set up a pointer to it.
  Elf64_Shdr *sec_hdrs = (Elf64_Shdr *)(file_chars + sha_offset);
  char *sec_names = (char *)(file_chars + sec_hdrs[shst_index].sh_offset);


  Elf64_Off symtaboff;          //tracking variables for sym and str tables
  long symtab_totalsize = 0;
  long symtab_entsize = 0;
  long symtab_num = 0;    //number of entries in symtable
  Elf64_Off strtaboff;

  // Search the Section Header Array for the section with name .symtab
  // (symbol table) and .strtab (string table).  Note their positions
  // in the file (sh_offset field).  Also note the size in bytes
  // (sh_size) and and the size of each entry (sh_entsize) for .symtab
  // so its number of entries can be computed.
  for(int i=0; i<num_secs; i++){
      Elf64_Shdr header = sec_hdrs[i];
      Elf64_Off shoff = header.sh_offset;
      Elf64_Off nameoff = header.sh_name;
      char *headname = nameoff+sec_names;

      if (!strcmp(headname, ".symtab")){       //if the name of the section = ".symtab"
        symtaboff = shoff;
        symtab_totalsize = header.sh_size;
        symtab_entsize = header.sh_entsize;
        symtab_num = symtab_totalsize/symtab_entsize;
      }
      else if (!strcmp(headname, ".strtab")){  //if the name of the section = ".strtab"
        strtaboff = shoff;
      }
  }

  if(!symtab_totalsize){                      //if the originally 0 value was unchanged
    printf("Couldn't find symbol table\n");
    return 1;
  }

  if(!strtaboff){                             //if the originally 0 value was unchanged
    printf("Couldn't find string table\n");
    return 1;
  }

  // PRINT byte information about where the symbol table was found and
  // its sizes. The number of entries in the symbol table can be
  // determined by dividing its total size in bytes by the size of
  // each entry.
  printf("Symbol Table\n");
  printf("- %ld bytes offset from start of file\n", (long)symtaboff);
  printf("- %ld bytes total size\n",symtab_totalsize);
  printf("- %ld bytes per entry\n",symtab_entsize);
  printf("- %ld entries\n",symtab_num);


  // Set up pointers to the Symbol Table and associated String Table
  // using offsets found earlier.
  Elf64_Sym *symtab = (Elf64_Sym *)(file_chars + symtaboff);
  char *strtab = (char *)(file_chars + strtaboff);


  // Print column IDs for info on each symbol
  printf("[%3s]  %8s %4s %s\n",
         "idx","TYPE","SIZE","NAME");

  // Iterate over the symbol table entries
  for(int i=0; i<symtab_num; i++){

    // Determine size of symbol and name. Use <NONE> name has zero
    // length.
    char * entname = strtab + symtab[i].st_name;
    if (!strcmp(entname,"")){
      entname = "<NONE>";
    }

    // Determine type of symbol. See assignment specification for
    // fields, macros, and definitions related to this.
    char *type = "";
    unsigned char typec = ELF64_ST_TYPE(symtab[i].st_info);

    if (typec == STT_NOTYPE){
      type = "NOTYPE";
    }
    else if (typec == STT_OBJECT){
      type = "OBJECT";
    }
    else if (typec == STT_FUNC){
      type = "FUNC";
    }
    else if (typec == STT_FILE){
      type = "FILE";
    }
    else{
      type = "SECTION";
    }

    // Print symbol information
    printf("[%3d]: %8s %4lu %s\n",i,type,symtab[i].st_size,entname);
  }

  // Unmap file from memory and close associated file descriptor
  munmap(file_chars, size);
  close(fd);
  return 0;
}
