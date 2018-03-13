//  ViewController.m
//  Calculator
//
//  Created by Fred Sevillano on 3/15/16.
//  Copyright © 2016 Fred Sevillano All rights reserved.

#import "ViewController.h"
#import "CalculatorModel.h"

@interface ViewController ()

@end

@implementation ViewController

int numLength = 0;
bool deci = false;

- (void)clearLabel{
    self.lblDisplay.text = [NSString stringWithFormat:@"0"];
    numLength = 0;
    deci = false;
}

- (void)trim:(double)value{
    self.lblDisplay.text = [NSString stringWithFormat:@"%g", value];
    deci = true;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.calculatorModel = [CalculatorModel new];
}

- (IBAction)btnsInts:(UIButton*)sender {
    if(numLength == 0 && deci == false){
        self.lblDisplay.text = [NSString stringWithFormat:@"%@", sender.titleLabel.text];
        numLength++;
    }else if(numLength < 9){
        self.lblDisplay.text = [NSString stringWithFormat:@"%@%@", self.lblDisplay.text, sender.titleLabel.text];
        numLength++;
    }
}

- (IBAction)btnAdd:(UIButton*)sender {
    [self.calculatorModel opFlag:1 calcInput:[self.lblDisplay.text doubleValue]];
    [self clearLabel];
}

- (IBAction)btnMin:(UIButton*)sender {
    [self.calculatorModel opFlag:2 calcInput:[self.lblDisplay.text doubleValue]];
    [self clearLabel];
}

- (IBAction)btnMulti:(UIButton*)sender {
    [self.calculatorModel opFlag:3 calcInput:[self.lblDisplay.text doubleValue]];
    [self clearLabel];
}

- (IBAction)btnDiv:(UIButton*)sender {
    [self.calculatorModel opFlag:4 calcInput:[self.lblDisplay.text doubleValue]];
    [self clearLabel];
}

- (IBAction)btnPercent:(id)sender {
    double resault = [self.calculatorModel percent:[self.lblDisplay.text doubleValue]];
    [self trim:resault];
}

- (IBAction)btnPosNeg:(id)sender {
    double resault = [self.calculatorModel posNeg:[self.lblDisplay.text doubleValue]];
    [self trim:resault];
}

- (IBAction)btnDeci:(UIButton*)sender {
    if (deci == false && numLength < 9) {
        self.lblDisplay.text = [NSString stringWithFormat:@"%@%@", self.lblDisplay.text, sender.titleLabel.text];
        deci = true;
    }
}

- (IBAction)btnEquals:(id)sender {
    double resault = [self.calculatorModel answer:[self.lblDisplay.text doubleValue]];
    [self trim:resault];
}

- (IBAction)btnAC:(id)sender {
    [self clearLabel];
    [self.calculatorModel opFlag:0 calcInput:[self.lblDisplay.text doubleValue]];
}

@end
