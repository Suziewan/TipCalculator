//
//  ViewController.m
//  TipCalculator
//
//  Created by Angie Linton on 2017-01-20.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmount;
@property (weak, nonatomic) IBOutlet UITextField *tipPercentage;
@property (weak, nonatomic) IBOutlet UILabel *tipAmount;

@end

@implementation ViewController

- (IBAction)calculateTip:(UIBarButtonItem *)sender{

    NSString *billAmount = self.billAmount.text;
    NSString *tipPercentage = self.tipPercentage.text;
 
        // get bill amount and tip percentage value - done
    
    NSLog(@"The bill amount is %@", billAmount);
    NSLog(@"The tip percentage is %@", tipPercentage);
    
    //convert them to a number - done
    
    NSInteger billAmountAsInt = [billAmount integerValue];
    NSInteger tipPercentageAsInt = [tipPercentage integerValue];
    
    //convert to a percentage
    double convertedTipPercentage = tipPercentageAsInt * 0.01;
    
    //do the math
    float calculatedAmount = billAmountAsInt * convertedTipPercentage;
    
    //test it
    NSLog(@"Tip Amount should be %.2f", calculatedAmount);
    
    //make appear in interface
    self.tipAmount.text = [NSString stringWithFormat:@"Your tip amount should be %.2f", calculatedAmount];
   }

- (void)viewDidLoad {
    [super viewDidLoad];
    


}



@end
