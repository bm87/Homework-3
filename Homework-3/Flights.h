//
//  Flights.h
//  Homework-3
//
//  Created by Braulio on 16/10/14.
//  Copyright (c) 2014 utzmg. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Flights : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *labelAirline;
@property (strong, nonatomic) IBOutlet UILabel *labelOrigin;
@property (strong, nonatomic) IBOutlet UILabel *labelDestination;
@property (strong, nonatomic) IBOutlet UIPickerView *information;

- (IBAction)vieFlight:(id)sender;

- (IBAction)shareFlight:(id)sender;

@end
