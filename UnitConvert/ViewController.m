//
//  ViewController.m
//  UnitConvert
//
//  Created by Lucas Yang on 2017-05-26.
//  Copyright © 2017 Lucas Yang. All rights reserved.
//

#import "ViewController.h"

double convertOneToTwo(double unitOneValue)
{
    return unitOneValue * 30.48;
}

double convertOneToThree(double unitOneValue)
{
    return unitOneValue * 12;
}

double convertOneToFour(double unitOneValue)
{
    return unitOneValue * 0.3048;
}



@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@property (weak, nonatomic) IBOutlet UILabel *resultField;

@end

@implementation ViewController



- (IBAction)updateButton:(id)sender {
    //self.resultField.text = @"clicked";
    double unitOne = [self.inputField.text doubleValue];
    
    
    NSMutableString *buffer = [NSMutableString new];
    if(self.segmentController.selectedSegmentIndex == 0)
    {
        double unitTwo = convertOneToTwo(unitOne);
        [buffer appendString:[@(unitTwo) stringValue]];
    }
    else if(self.segmentController.selectedSegmentIndex == 1)
    {
        double unitThree = convertOneToThree(unitOne);
        [buffer appendString:[@(unitThree) stringValue]];
    }
    else
    {
        double unitFour = convertOneToFour(unitOne);
        [buffer appendString:[@(unitFour) stringValue]];
    }
    
    
    self.resultField.text = buffer;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
