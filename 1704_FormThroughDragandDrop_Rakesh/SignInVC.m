//
//  SignInVC.m
//  1704_FormThroughDragandDrop_Rakesh
//
//  Created by student on 6/29/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import "SignInVC.h"
#import "ViewController.h"
#import "UserDetailsVC.h"

@interface SignInVC ()

@end

@implementation SignInVC

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

- (IBAction)backButton:(UIButton *)sender {
    ViewController * hvc = [self.storyboard instantiateViewControllerWithIdentifier:@"homeVC"];
    [self presentViewController:hvc animated:YES completion:^{
    }];
}

- (IBAction)loginButton:(UIButton *)sender {
    
    AppDelegate* appDelegate = (AppDelegate*)[ [UIApplication sharedApplication] delegate];
    
    for (unsigned short int i=0; i<appDelegate.userArray.count; i++) {
        NSString* username=[[appDelegate.userArray objectAtIndex:i] objectForKey:@"username"];
        NSString* password=[[appDelegate.userArray objectAtIndex:i] objectForKey:@"password"];
        NSString* firstName=[[appDelegate.userArray objectAtIndex:i] objectForKey:@"fName"];
        NSString* middleName=[[appDelegate.userArray objectAtIndex:i]objectForKey:@"mName"];
        NSString* lastName=[[appDelegate.userArray objectAtIndex:i] objectForKey:@"lName"];
        NSLog(@"%@",username);
        NSLog(@"%@",password);
        NSLog(@"%@",self.userEmailIdTF.text);
        NSLog(@"%@",self.userPasswordTF.text);
        if ([username isEqualToString:self.userEmailIdTF.text] && [password isEqualToString:self.userPasswordTF.text ]) {
            self.uName=username;
            self.pass=password;
            self.fName=firstName;
            self.mName=middleName;
            self.lName=lastName;
        }
        
    }
    if ([self.uName isEqualToString:self.userEmailIdTF.text] && [self.pass isEqualToString:self.userPasswordTF.text ]) {
        
    UserDetailsVC * uvc = [self.storyboard instantiateViewControllerWithIdentifier:@"userDVC"];
        NSLog(@"%@",self.fName);
        NSLog(@"%@",self.mName);
        NSLog(@"%@",self.lName);
        uvc.fName2=self.fName;
        uvc.mName2=self.mName;
        uvc.lName2=self.lName;
        
    [self presentViewController:uvc animated:YES completion:^{
        
    }];
    }else{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Opss !!" message:@" Invalid Email Id Or Password !! " preferredStyle:UIAlertControllerStyleAlert];        UIAlertAction *yesAction = [UIAlertAction actionWithTitle:@"Try Again" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action){}];
        
        [alert addAction:yesAction];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
    
}
@end
