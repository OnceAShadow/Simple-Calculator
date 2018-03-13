//  ViewController.h
//  Calculator
//
//  Created by Fred Sevillano on 3/15/16.
//  Copyright © 2016 Fred Sevillano All rights reserved.

#import <UIKit/UIKit.h>

@class CalculatorModel;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lblDisplay;
@property (strong, nonatomic) CalculatorModel *calculatorModel;

@end
