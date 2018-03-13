//  CalculatorModel.m
//  Calculator
//
//  Created by Fred Sevillano on 3/15/16.
//  Copyright © 2016 Fred Sevillano All rights reserved.

#import "CalculatorModel.h"

@implementation CalculatorModel

int operatorFlag;
double lastInput;

- (void) opFlag:(int)flag calcInput:(double)input {
    operatorFlag = flag;
    lastInput = input;
}

- (double) answer:(double)input {
    if(operatorFlag == 0){
        return input;
    }else if(operatorFlag == 1){
        operatorFlag = 0;
        return lastInput + input;
    }else if(operatorFlag == 2){
        operatorFlag = 0;
        return lastInput - input;
    }else if(operatorFlag == 3){
        operatorFlag = 0;
        return lastInput * input;
    }else if(operatorFlag == 4){
        operatorFlag = 0;
        return lastInput / input;
    }else{
        operatorFlag = 0;
        return input;
    }
}

- (double) posNeg:(double)input {
    return input * -1;
}

- (double) percent:(double)input {
    return input / 100;
}

@end
