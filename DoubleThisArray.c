//
//  DoubleThisArray.c
//  DoubleMyArray
//
//  Created by Abhinav Anurag on 03/04/23.
//

#include "DoubleThisArray.h"

// C Function which is called by Swift Code to double the array.

float * doubleThisArray(float userInput[], int n) {
    
    for(int i = 0; i < n; i++) {
        userInput[i] *= 2;
    }
    return userInput;
}
