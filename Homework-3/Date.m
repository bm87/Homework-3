//
//  Date.m
//  Homework-3
//
//  Created by Braulio on 17/10/14.
//  Copyright (c) 2014 utzmg. All rights reserved.
//

#import "Date.h"
#import "Declarations.h"

@interface Date ()

@end

@implementation Date

int months, days, hours, minutes;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.labelDiference.text = @"";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)diference:(id)sender {
    NSDateComponents *components;
    components = [[NSCalendar currentCalendar] components: NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute fromDate:self.picker1.date toDate:self.picker2.date options:0];
    months = (int) [components month];
    days = (int) [components day];
    hours = (int) [components hour];
    minutes = (int) [components minute];
    
    self.labelDiference.text = [NSString stringWithFormat:@"%d months %d days %d hours %d minutes", months, days, hours, minutes];
    
}

- (IBAction)sharediference:(id)sender {
    
    UIActivityViewController    *actViewController;
    
    strDate = [NSString stringWithFormat:@"The diference is %d months %d days %d hours %d minutes", months, days, hours, minutes];
    shareDate = @[strDate];
    
    actViewController = [[UIActivityViewController alloc] initWithActivityItems:shareDate applicationActivities:nil];
    
    actViewController.excludedActivityTypes = [NSArray arrayWithObjects:UIActivityTypePrint, UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard, UIActivityTypeAirDrop, UIActivityTypeSaveToCameraRoll,UIActivityTypeMail, nil];
    
    [self presentViewController:actViewController animated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
