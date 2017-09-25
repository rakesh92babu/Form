//
//  ViewController.h
//  1704_FormThroughDragandDrop_Rakesh
//
//  Created by student on 6/28/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

@interface ViewController : UIViewController

- (IBAction)signInButton:(UIButton *)sender;
- (IBAction)signUpButton:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UIVisualEffectView *topBlur;

@end

