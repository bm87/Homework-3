//
//  Date.h
//  Homework-3
//
//  Created by Braulio on 17/10/14.
//  Copyright (c) 2014 utzmg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Date : UIViewController

@property (strong, nonatomic) IBOutlet UIDatePicker *picker1;
@property (strong, nonatomic) IBOutlet UIDatePicker *picker2;

@property (strong, nonatomic) IBOutlet UILabel *labelDiference;

- (IBAction)diference:(id)sender;

- (IBAction)sharediference:(id)sender;



@end
