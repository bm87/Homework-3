//
//  Flights.m
//  Homework-3
//
//  Created by Braulio on 16/10/14.
//  Copyright (c) 2014 utzmg. All rights reserved.
//

#import "Flights.h"
#import "Declarations.h"

@interface Flights ()

@end

@implementation Flights

- (void)viewDidLoad
{
    [super viewDidLoad];
    maAirline = [NSMutableArray arrayWithObjects: @"Aeromexico", @"Interjet", @"Volaris", nil];
    maOrigin = [NSMutableArray arrayWithObjects: @"Guadalajara", @"DF", @"Monterrey", nil];
    maDestination = [NSMutableArray arrayWithObjects: @"Puerto Vallarta", @"Aguas Calientes", @"México", nil];
    [self vieFlight:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:
(UIPickerView *)pickerView
{
    return 3;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return [maAirline count];
}

- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    if (component == 0)
    {
        return 100;
    }
    else if (component == 1)
    {
        return 100;
    }
    else
    {
        return 100;
    }
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UILabel* tView = (UILabel*)view;
    if (!tView)
    {
        tView = [[UILabel alloc] init];
    }
    
    if (component == 0)
    {
        tView.text = maAirline[row];
    }
    else if(component == 1)
    {
        tView.text = maOrigin[row];
    }
    else if (component == 2)
    {
        tView.text = maDestination[row];
    }
    return tView;
}


- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if (component == 0) {
        if (row == 0)
        {
            [maOrigin removeAllObjects];
            [maOrigin addObjectsFromArray: @[@"Guadalajara", @"DF", @"Monterrey"]];
            
            [maDestination removeAllObjects];
            [maDestination addObjectsFromArray:@[@"Puerto Vallarta", @"Aguas Calientes", @"México"]];
        }
        else if (row == 1)
        {
            [maOrigin removeAllObjects];
            [maOrigin addObjectsFromArray: @[ @"Cancun", @"Tijuana", @"Pachuca"]];
            
            [maDestination removeAllObjects];
            [maDestination addObjectsFromArray:@[@"Merida", @"Tuxtla", @"Morelia"]];
        }
        else if (row == 2)
        {
            [maOrigin removeAllObjects];
            [maOrigin addObjectsFromArray: @[ @"Acapulco", @"Toluca", @"Palenque"]];
            
            [maDestination removeAllObjects];
            [maDestination addObjectsFromArray:@[@"Tepic", @"Tampico", @"Puebla"]];
        }
    }
    [pickerView reloadAllComponents];
}

- (IBAction)vieFlight:(id)sender {
    self.labelAirline.text = maAirline[[self.information selectedRowInComponent:0]];
    self.labelOrigin.text = maOrigin[[self.information selectedRowInComponent:1]];
    self.labelDestination.text = maDestination[[self.information selectedRowInComponent:2]];
}

- (IBAction)shareFlight:(id)sender {
    NSString *strShareFlight = [NSString stringWithFormat:@"%@ %@ %@ %@ %@ %@", @"I am Traveling of", self.labelOrigin.text, @"to", self.labelDestination.text, @"in", self.labelAirline.text];
    NSArray *aFlight = @[strShareFlight];
    
    UIActivityViewController *actViewController = [[UIActivityViewController alloc] initWithActivityItems:aFlight applicationActivities:nil];
    
    actViewController.excludedActivityTypes = [NSArray arrayWithObjects:UIActivityTypePrint, UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard, UIActivityTypeAirDrop, UIActivityTypeMail, nil];
    
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
