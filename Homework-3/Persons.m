//
//  Persons.m
//  Homework-3
//
//  Created by Braulio on 16/10/14.
//  Copyright (c) 2014 utzmg. All rights reserved.
//

#import "Persons.h"
#import "Declarations.h"
UIImage *imgPost;
UIActivityViewController *activityview;

@implementation Persons

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)sharecharacter:(id)sender {
   
    sharedPostimg = [NSString stringWithFormat:@"My Favorite avenger is %@",maCharacters[self.share.tag]];
    imgPost = [UIImage imageNamed:[maImgCharacters objectAtIndex:self.share.tag]];
    sharepostall = @[imgPost, sharedPostimg];
    
    activityview = [[UIActivityViewController alloc] initWithActivityItems:sharepostall applicationActivities:nil];
    
    activityview.excludedActivityTypes = [NSArray arrayWithObjects:UIActivityTypePrint, UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard, UIActivityTypeAirDrop, UIActivityTypeSaveToCameraRoll, UIActivityTypeMail, nil];
    [self.views presentViewController:activityview animated:YES completion:nil];
}
@end