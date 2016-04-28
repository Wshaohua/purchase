//
//  UIBarButtonItem+Extension.h
//  GroupBuy
//
//  Created by ShaoHua on 15/6/7.
//  Copyright (c) 2015年 ShaoHua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
+ (UIBarButtonItem *)creatBarButtonItemWithNorImageName:(NSString *)norImageName higImageName:(NSString *)higImageName target:(id)target active:(SEL)action;
+ (UIBarButtonItem *)creatBarButtonItemWithNorImage:(UIImage *)norImage higImage:(UIImage *)higImage target:(id)target active:(SEL)action;

+ (UIBarButtonItem *)backItemWith:(NSString *)title target:(id)target action:(SEL)action;
@end
