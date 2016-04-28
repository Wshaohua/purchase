//
//  BZSetBaseCellDataModel.h
//  GroupBuy
//
//  Created by ShaoHua on 15/7/26.
//  Copyright (c) 2015年 Shaohua. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^myBlock)();

@interface BZSetBaseCellDataModel : NSObject

@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *icon;
@property (copy, nonatomic) NSString *subTitle;
@property (copy, nonatomic) NSString *rightTitle;
@property (copy, nonatomic) myBlock optional;
@property (assign, nonatomic, getter=isInSetting) BOOL inSetting;
@property (unsafe_unretained, nonatomic) Class pushVC;

+ (instancetype)cellWithTitle:(NSString *)title icon:(NSString *)icon pushVC:(Class)pushVC;
+ (instancetype)cellWithTitle:(NSString *)title icon:(NSString *)icon;


@end
