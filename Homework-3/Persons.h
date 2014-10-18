//
//  Persons.h
//  Homework-3
//
//  Created by Braulio on 16/10/14.
//  Copyright (c) 2014 utzmg. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Persons : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *lblName;
@property (strong, nonatomic) IBOutlet UIImageView *imgCharacter;

- (IBAction)sharecharacter:(id)sender;
@property (strong, nonatomic) IBOutlet UIButton *share;
@property (nonatomic, assign) UIViewController *views;

@end


