//
//  SignInVC.h
//  1704_FormThroughDragandDrop_Rakesh
//
//  Created by student on 6/29/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface SignInVC : UIViewController

@property (strong, nonatomic) NSMutableArray* userArray2;
@property (weak, nonatomic) IBOutlet UILabel *signInLbl;
@property (weak, nonatomic) IBOutlet UITextField *userEmailIdTF;
@property (weak, nonatomic) IBOutlet UITextField *userPasswordTF;
- (IBAction)backButton:(UIButton *)sender;
- (IBAction)loginButton:(UIButton *)sender;
@property NSString * uName;
@property NSString * pass;
@property NSString * fName;
@property NSString * mName;
@property NSString * lName;

@end
