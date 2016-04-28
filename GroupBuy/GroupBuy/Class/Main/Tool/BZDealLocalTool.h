//
//  BZDealLocalTool.h
//  GroupBuy
//
//  Created by ShaoHua on 15/7/26.
//  Copyright (c) 2015年 Shaohua. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BZDeal,BZCategoryModel;

@interface BZDealLocalTool : NSObject
+ (NSMutableArray *)recentDeals;
+ (void)saveRecentDeal:(BZDeal *)deal;
+ (void)deleteRecentDeals:(NSArray *)deals;

+ (NSMutableArray *)collectDeals;
+ (void)saveCollectDeal:(BZDeal *)deal;
+ (void)cancelCollectDeal:(BZDeal *)deal;
+ (void)cancelCollectDeals:(NSArray *)deals;

@end
