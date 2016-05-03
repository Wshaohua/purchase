//
//  BZMoreAboutViewController.m
//  GroupBuy
//
//  Created by ShaoHua on 15/7/30.
//  Copyright (c) 2015年 ShaoHua. All rights reserved.
//

#import "BZMoreAboutViewController.h"

@interface BZMoreAboutViewController ()

@end

@implementation BZMoreAboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem backItemWith:@"关于美团" target:self action:@selector(back)];
}

- (void)back
{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)userProtical {
}
- (IBAction)phone {
    NSURL *url =[NSURL URLWithString:@"telprompt://18336072382"];
    [[UIApplication sharedApplication] openURL:url];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
