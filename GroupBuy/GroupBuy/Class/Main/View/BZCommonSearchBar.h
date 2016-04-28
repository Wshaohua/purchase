//
//  BZCommonSearchBar.h
//  美团团购
//
//  Created by 尚承教育 on 15/7/19.
//  Copyright (c) 2015年 魔力包. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BZCommonSearchBar : UIImageView
@property (assign, nonatomic) BOOL showWhiteBg;
@property (strong, nonatomic) UITextField *searchTextField;
@property (copy, nonatomic) NSString *bgImageName;
@property (strong, nonatomic) UIImageView *iconImageView;

@end