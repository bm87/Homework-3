//
//  Characters.m
//  Homework-3
//
//  Created by Braulio on 16/10/14.
//  Copyright (c) 2014 utzmg. All rights reserved.
//

#import "Characters.h"
#import "Persons.h"
#import "Declarations.h"
UIImage *imgPost2;
UIActivityViewController *activityview2;

@interface Characters ()

@end

@implementation Characters

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    maCharacters     =  [NSMutableArray arrayWithObjects:@"Iron Man", @"Capitán America", @"Hulk", @"Thor", @"Viuda Negra", @"Haweye", @"Nick Fury", @"Maria Hill", @"Phil Coulson", @"Loki", nil];
    maImgCharacters     =  [NSMutableArray arrayWithObjects:@"iron.jpg", @"capitan.jpg", @"hulk.jpg", @"thor.jpg", @"viuda.jpg", @"ojo.jpg",@"nick.jpg", @"maria.jpg", @"phil.jpg", @"loki.jpg",nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 45;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Persons";
    
    Persons *cell = (Persons *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[Persons alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    cell.lblName.text       = maCharacters[indexPath.row];
    cell.imgCharacter.image    = [UIImage imageNamed:maImgCharacters[indexPath.row]];
    cell.share.tag = indexPath.row;
    cell.views = self;
    return cell;
}

- (IBAction)shareall:(id)sender {
    
    NSString *all = [maCharacters componentsJoinedByString:@", "];
    sharedPostimg = [NSString stringWithFormat:@"The avengers %@",all];
    imgPost2    = [UIImage imageNamed:@"avengers.jpg"];
    sharepostall = @[imgPost2, sharedPostimg];
    
    activityview2 = [[UIActivityViewController alloc] initWithActivityItems:sharepostall applicationActivities:nil];
    
    activityview2.excludedActivityTypes = [NSArray arrayWithObjects:UIActivityTypePrint, UIActivityTypeAssignToContact, UIActivityTypeCopyToPasteboard, UIActivityTypeAirDrop, UIActivityTypeSaveToCameraRoll, UIActivityTypeMail, nil];
    
    [self presentViewController:activityview2 animated:YES completion:nil];
}

@end



