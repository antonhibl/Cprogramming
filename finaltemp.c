//
//  practice.c
//  
//
//  Created by Anton Hibl on 2/23/21.
//

#include <stdio.h>

#define LOWER 0
#define UPPER 300
#define STEP 20
#define CONVERSION 32

main()
{
    int fahr;
    printf("\fFahr  Celsius\n");
    printf("\r====  =======\n");
    
    for(fahr = LOWER; fahr <= UPPER; fahr = fahr + STEP)
        printf("%3d %6.1f\n", fahr, (5.0 / 9.0) * (fahr - CONVERSION));
}
