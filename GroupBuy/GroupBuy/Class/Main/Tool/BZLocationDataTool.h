//
//  BZLocationDataTool.h
//  GroupBuy
//
//  Created by ShaoHua on 15/7/26.
//  Copyright (c) 2015年 Shaohua. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BZCategoryModel,BZDeal;
@interface BZLocationDataTool : NSObject
+ (NSArray *)allCities;
+ (NSArray *)allCateGory;
+ (NSArray *)allSorts;
+ (BZCategoryModel *)getCategroyFromDeal:(BZDeal *)deal;
@end
