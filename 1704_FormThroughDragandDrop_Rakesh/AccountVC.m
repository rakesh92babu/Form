//
//  AccountVC.m
//  1704_FormThroughDragandDrop_Rakesh
//
//  Created by student on 6/28/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import "AccountVC.h"
#import "ViewController.h"
#import "PersonalVC.h"
#import "AppDelegate.h"

@interface AccountVC ()

@end

@implementation AccountVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.count=0;
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)submitButton:(UIButton *)sender {
    ViewController * hvc = [self.storyboard instantiateViewControllerWithIdentifier:@"homeVC"];
    UIAlertController *alert1 = [UIAlertController alertControllerWithTitle:@"Completed Successfully !!" message:@" click YES to Save the Registered Data Or No to change data Fields." preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *yesAction1 = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
    
    [self presentViewController:hvc animated:YES completion:^{
        AppDelegate* appDelegate = (AppDelegate*)[ [UIApplication sharedApplication] delegate];
        [appDelegate.userDataDictionary setObject:self.emailIdTF.text forKey:@"username"];
        [appDelegate.userDataDictionary setObject:self.passwordTF.text forKey:@"password"];
        
        [appDelegate.userArray addObject:appDelegate.userDataDictionary];
        
        }];
        
    }];
    
    UIAlertAction *noAction1 = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * action){
        
        self.emailIdTF.text=nil;
        self.passwordTF.text=nil;
        self.rePasswordTF.text=nil;
        
    }];
    [alert1 addAction:yesAction1];
    [alert1 addAction:noAction1];
    [self presentViewController:alert1 animated:YES completion:nil];

}

- (IBAction)backButton:(UIButton *)sender {
    PersonalVC * pdvc = [self.storyboard instantiateViewControllerWithIdentifier:@"personalDVC"];
    [self presentViewController:pdvc animated:YES completion:^{
        
    }];
}
@end
