//
//  ViewController.m
//  TaxCalculator
//
//  Created by Rafael Auriemo on 12/31/15.
//  Copyright (c) 2015 Rafael Auriemo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *priceTextField;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedControl;

@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@property double nyTax, chiTax, caTax;
- (IBAction)onCalculateButtonTapped:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.caTax = .075f;
    self.chiTax = .0925f;
    self.nyTax = .045f;
    self.resultLabel.text = @"";
    self.button.layer.cornerRadius = 10;
    self.button.clipsToBounds = YES;
}

- (IBAction)onCalculateButtonTapped:(id)sender {
    
    if(self.segmentedControl.selectedSegmentIndex == 0){
        self.resultLabel.text = [NSString stringWithFormat:@"$%.02f", self.caTax*[self.priceTextField.text doubleValue]];
    }else if (self.segmentedControl.selectedSegmentIndex == 1){
        self.resultLabel.text = [NSString stringWithFormat:@"$%.02f", self.chiTax*[self.priceTextField.text doubleValue]];
    }else{
        self.resultLabel.text = [NSString stringWithFormat:@"$%.02f", self.nyTax*[self.priceTextField.text integerValue]];
    }
}
@end
