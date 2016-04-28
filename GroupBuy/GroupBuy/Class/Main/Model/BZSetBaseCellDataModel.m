//
//  BZSetBaseCellDataModel.m
//  GroupBuy
//
//  Created by ShaoHua on 15/7/26.
//  Copyright (c) 2015年 Shaohua. All rights reserved.
//

#import "BZSetBaseCellDataModel.h"

@implementation BZSetBaseCellDataModel

+ (instancetype)cellWithTitle:(NSString *)title icon:(NSString *)icon
{
    BZSetBaseCellDataModel *cellModel = [[self alloc]init];
    cellModel.title = title;
    cellModel.icon = icon;
    return cellModel;
}


+ (instancetype)cellWithTitle:(NSString *)title icon:(NSString *)icon pushVC:(Class)pushVC
{
    BZSetBaseCellDataModel *cellModel = [[self alloc]init];
    cellModel.title = title;
    cellModel.icon = icon;
    cellModel.pushVC = pushVC;
    return cellModel;
}


@end
