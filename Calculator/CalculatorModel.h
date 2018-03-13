//  CalculatorModel.h
//  Calculator
//
//  Created by Fred Sevillano on 3/15/16.
//  Copyright © 2016 Fred Sevillano All rights reserved.

#import <Foundation/Foundation.h>

@interface CalculatorModel : NSObject

- (void) opFlag:(int)flag calcInput:(double)input;
- (double) answer:(double)input;
- (double) posNeg:(double)input;
- (double) percent:(double)input;

@end
