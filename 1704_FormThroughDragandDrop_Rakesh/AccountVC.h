//
//  AccountVC.h
//  1704_FormThroughDragandDrop_Rakesh
//
//  Created by student on 6/28/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface AccountVC : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *accountLbl;
@property (weak, nonatomic) IBOutlet UITextField *emailIdTF;
@property (weak, nonatomic) IBOutlet UITextField *passwordTF;
@property (weak, nonatomic) IBOutlet UITextField *rePasswordTF;
@property unsigned short int count;
- (IBAction)submitButton:(UIButton *)sender;

- (IBAction)backButton:(UIButton *)sender;

@end
