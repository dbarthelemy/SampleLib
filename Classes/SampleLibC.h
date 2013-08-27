//
//  SampleLib.c
//  Pods
//
//  Created by David Barthelemy on 21/08/13.
//
//

#include <stdio.h>

#define ARRAYSIZE(x) (sizeof x/sizeof x[0])

typedef struct resultStruct {
    int i, j, d, iteration;
} Result;

Result findMaxDistanceOn2(int[], int);
Result findMaxDistanceOn(int[], int);
