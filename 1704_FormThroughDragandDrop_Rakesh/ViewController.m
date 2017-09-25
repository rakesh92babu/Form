//
//  ViewController.m
//  1704_FormThroughDragandDrop_Rakesh
//
//  Created by student on 6/28/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import "ViewController.h"
#import "PersonalVC.h"
#import "SignInVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.topBlur.layer.cornerRadius=10;
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)signInButton:(UIButton *)sender {
    SignInVC * sivc = [self.storyboard instantiateViewControllerWithIdentifier:@"signInDVC"];
    [self presentViewController:sivc animated:YES completion:^{
        
    }];
}

- (IBAction)signUpButton:(UIButton *)sender {
    PersonalVC * pvc = [self.storyboard instantiateViewControllerWithIdentifier:@"personalDVC"];
    [self presentViewController:pvc animated:YES completion:^{
        
    }];
}
@end
