//
//  BZDetailViewController.m
//  GroupBuy
//
//  Created by ShaoHua on 16/4/27.
//  Copyright © 2016年 魔力包. All rights reserved.
//

#import "BZDetailViewController.h"

@interface BZDetailViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *WebView;

@end

@implementation BZDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.WebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.deal.deal_h5_url]]];
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

@end
