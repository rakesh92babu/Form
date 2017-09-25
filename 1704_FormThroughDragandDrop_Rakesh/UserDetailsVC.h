//
//  UserDetailsVC.h
//  1704_FormThroughDragandDrop_Rakesh
//
//  Created by student on 6/29/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface UserDetailsVC : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *detailsLbl;
- (IBAction)backButton:(UIButton *)sender;
- (IBAction)logOutButton:(UIButton *)sender;
@property NSString* fName2;

@property NSString* lName2;

@property NSString * mName2;
@end
