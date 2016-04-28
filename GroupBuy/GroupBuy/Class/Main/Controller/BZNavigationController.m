//
//  BZNavigationController.m
//  GroupBuy
//
//  Created by ShaoHua on 15/6/7.
//  Copyright (c) 2015年 ShaoHua. All rights reserved.
//

#import "BZNavigationController.h"

@interface BZNavigationController ()

@end

@implementation BZNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
//    UIBarButtonItem *barItem = [UIBarButtonItem appearance];
//    NSDictionary *attributeDict = @{NSForegroundColorAttributeName : [UIColor blackColor],NSFontAttributeName : [UIFont systemFontOfSize:15]};
//    [barItem setTitleTextAttributes:attributeDict forState:UIControlStateNormal];
    

    [self setUpItem];
}



- (void)setUpItem
{
    UIBarButtonItem *item = [UIBarButtonItem appearance];
    NSMutableDictionary *norDic = [NSMutableDictionary dictionary];
    norDic[NSForegroundColorAttributeName] = [UIColor blackColor];
    norDic[NSFontAttributeName] = [UIFont systemFontOfSize:15];
    [item setTitleTextAttributes:norDic forState:UIControlStateNormal];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
       
    }
    [super pushViewController:viewController animated:animated];
}

@end
