//
//  UserDetailsVC.m
//  1704_FormThroughDragandDrop_Rakesh
//
//  Created by student on 6/29/17.
//  Copyright © 2017 Rakesh. All rights reserved.
//

#import "UserDetailsVC.h"
#import "SignInVC.h"

@interface UserDetailsVC ()

@end

@implementation UserDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.detailsLbl.text=[NSString stringWithFormat:@"Welcome, %@ %@ %@", self.fName2, self.mName2,self.lName2];
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
    SignInVC * sivc = [self.storyboard instantiateViewControllerWithIdentifier:@"signInDVC"];
    [self presentViewController:sivc animated:YES completion:^{
        
    }];

}

- (IBAction)logOutButton:(UIButton *)sender {
    SignInVC * sivc = [self.storyboard instantiateViewControllerWithIdentifier:@"signInDVC"];
    [self presentViewController:sivc animated:YES completion:^{
        
    }];

}
@end
