//
//  BZSetBaseCellSwitchModel.h
//  GroupBuy
//
//  Created by ShaoHua on 15/7/26.
//  Copyright (c) 2015年 Shaohua. All rights reserved.
//

#import "BZSetBaseCellDataModel.h"

@interface BZSetBaseCellSwitchModel : BZSetBaseCellDataModel

@property (copy, nonatomic) NSString *key;

+ (instancetype)cellWithTitle:(NSString *)title icon:(NSString *)icon key:(NSString *)key;
@end
