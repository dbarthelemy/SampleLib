//
//  SampleLibC.c
//  Pods
//
//  Created by David Barthelemy on 21/08/13.
//
//

#include <stdio.h>
#include "SampleLibC.h"

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
    // FIXME
}