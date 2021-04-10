//  Created by Anton Hibl on 3/3/21.
//

#include <dirent.h>
#include <stdio.h>

int main(void) {
  DIR *d;
  struct dirent *dir;
  d = opendir(".");
  if (d) {
    while ((dir = readdir(d)) != NULL) {
      if (dir->d_type == DT_REG)
      {
         printf("%s\n", dir->d_name);
      }
    }
    closedir(d);
  }
  return(0);
}
