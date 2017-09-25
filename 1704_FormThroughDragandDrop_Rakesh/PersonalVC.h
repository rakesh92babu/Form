//
//  PersonalVC.h
//  1704_FormThroughDragandDrop_Rakesh
//
//  Created by student on 6/28/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface PersonalVC : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *personalLbl;

@property (weak, nonatomic) IBOutlet UITextField *firstNameTF;
@property (weak, nonatomic) IBOutlet UITextField *middleNameTF;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTF;
@property (weak, nonatomic) IBOutlet UITextField *mobileTF;
- (IBAction)nextButton:(UIButton *)sender;


- (IBAction)backButton:(UIButton *)sender;

@end
