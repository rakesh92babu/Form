//
//  PersonalVC.m
//  1704_FormThroughDragandDrop_Rakesh
//
//  Created by student on 6/28/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import "PersonalVC.h"
#import "ViewController.h"
#import "AccountVC.h"
#import "AppDelegate.h"

@interface PersonalVC ()

@end

@implementation PersonalVC

- (void)viewDidLoad {
    [super viewDidLoad];
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

- (IBAction)nextButton:(UIButton *)sender {
    AccountVC * advc = [self.storyboard instantiateViewControllerWithIdentifier:@"accountDVC"];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Going to Register !!" message:@" click YES to procced Next page Or No to change data entry." preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *yesAction = [UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){
    
    [self presentViewController:advc animated:YES completion:^{
        
        AppDelegate* appDelegate = (AppDelegate*)[ [UIApplication sharedApplication] delegate];
        
        appDelegate.userDataDictionary=[[NSMutableDictionary alloc]initWithObjectsAndKeys:self.firstNameTF.text,@"fName",self.middleNameTF.text,@"mName",self.lastNameTF.text,@"lName",self.mobileTF.text,@"mobile", nil];
        }];
    
    }];
    UIAlertAction *noAction = [UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleDestructive handler:^(UIAlertAction * action){
        
        self.firstNameTF.text=nil;
        self.middleNameTF.text=nil;
        self.lastNameTF.text=nil;
        self.mobileTF.text=nil;
        
    }];
    [alert addAction:yesAction];
    [alert addAction:noAction];
    [self presentViewController:alert animated:YES completion:nil];
}

- (IBAction)backButton:(UIButton *)sender {
    ViewController * hvc = [self.storyboard instantiateViewControllerWithIdentifier:@"homeVC"];
    [self presentViewController:hvc animated:YES completion:^{
        
    }];
    
}
@end
