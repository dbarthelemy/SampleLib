//
//  SampleLibC.c
//  Pods
//
//  Created by David Barthelemy on 21/08/13.
//
//

#include <stdio.h>
#include <stdlib.h>
#include "SampleLibC.h"

static Result findMaxDistanceOn2(int[], int);
static Result findMaxDistanceOn(int[], int);
static int max(int, int);
static int min(int, int);

// Public functions
Result findMaxDistance(int input[], int size) {
    return findMaxDistanceOn(input, size);
}

// Private functions
Result findMaxDistanceOn2(int input[], int size) {
    int n = size;
    int i = 0;
    int j = n-1;
    int iValue, jValue;
    Result result = {i, j, 0, 0};
    
	for (int d = j-i; d > 0; d--) {
        for (int pos = 0; pos+d < n; pos++) {
            i = pos;
            j = i + d;
            iValue = input[i];
            jValue = input[j];
            
            result.iteration++;
            
            if (jValue > iValue) {
                result.i = i;
                result.j = j;
                result.d = d;
                break;
            }
        }
        if (result.d != 0) {
            break;
        }
    }
    return result;
}

Result findMaxDistanceOn(int input[], int size) {
    int n = size;
    int i = 0;
    int j = n-1;
    Result result = {i, j, 0, 0};

    // Build the array which store the minimum values starting from the first element
    int *minArray = malloc(sizeof(int) * n);
    minArray[i] = input[i];
    for (i = 1; i < n; i++) {
        minArray[i] = min(input[i], minArray[i-1]);
        result.iteration++;
    }

    // Build Max Index Array starting from the last element
    int *maxArray = malloc(sizeof(int) * n);
    maxArray[j] = input[j];
    for (j = n-2; j >= 0; j--) {
        maxArray[j] = max(input[j], maxArray[j+1]);
        result.iteration++;
    }
    
    // Find the optimum j-i value by scanning the two arrays form their first elements
    i = 0;
    j = 0;
    int d = -1;
    while ((j < n) && (i < n)) {
        if (minArray[i] < maxArray[j]) {
            if ((j-i) > d) {
                result.i = i;
                result.j = j;
                result.d = j-i;
            }
            d = max(d, j-i);
            j++;
        }
        else {
            i++;
        }
        result.iteration++;
    }
    
    return result;
}

int max(int x, int y) {
    return (x > y) ? x : y;
}

int min(int x, int y) {
    return (x < y) ? x : y;
}
