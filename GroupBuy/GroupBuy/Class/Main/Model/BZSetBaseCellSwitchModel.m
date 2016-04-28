//
//  BZSetBaseCellSwitchModel.m
//  GroupBuy
//
//  Created by ShaoHua on 15/7/26.
//  Copyright (c) 2015年 Shaohua. All rights reserved.
//

#import "BZSetBaseCellSwitchModel.h"

@implementation BZSetBaseCellSwitchModel


+ (instancetype)cellWithTitle:(NSString *)title icon:(NSString *)icon key:(NSString *)key
{
    BZSetBaseCellSwitchModel *cellModel = [[self alloc]init];
    cellModel.title = title;
    cellModel.icon = icon;
    cellModel.key = key;
    return cellModel;
}

@end
