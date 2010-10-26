#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

int main(int argc, char *argv[])
{
  FILE *in_fp = fopen(argv[1], "r"), *out_fp = fopen(argv[2], "w");
  int ic, state = 0;
  char c, s, t;

  fprintf(out_fp, "P3\n128 128 255\n");
  while(true)
    {
      ic = fgetc(in_fp);
      if(ic == -1)
	{
	  break;
	}
      c = (char)ic;
      if(state == 0)
	{
	  if(c == '\n')
	    {
	      state = 1;
	    }
	}
      else if(state == 1)
	{
	  if(c == '\n')
	    {
	      state = 2;
	    }
	}
      else if(state == 2)
	{
	  fprintf(out_fp, "%d ", ic);
	  state = 3;
	}
      else if(state == 3)
	{
	  fprintf(out_fp, "%d ", ic);
	  state = 4;
	}
      else
	{
	  fprintf(out_fp, "%d\n", ic);
	  state = 2;
	}
    }

  fclose(in_fp);
  fclose(out_fp);
  
  return 0;
}
