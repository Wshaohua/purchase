//
//  BZDealLocalTool.m
//  GroupBuy
//
//  Created by ShaoHua on 15/7/26.
//  Copyright (c) 2015年 Shaohua. All rights reserved.
//

#import "BZDealLocalTool.h"
#import "BZDeal.h"

#define BZRecentDealsPath [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"recentDeals.data"]

#define BZCollectDealsPath [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"collectDeals.data"]


@implementation BZDealLocalTool

static NSMutableArray *_historyDeals;
static NSMutableArray *_collectDeals;

+ (NSMutableArray *)recentDeals
{
   _historyDeals = [NSKeyedUnarchiver unarchiveObjectWithFile:BZRecentDealsPath];
    if (!_historyDeals) {
        _historyDeals = [NSMutableArray array];
    }
    return _historyDeals;
}

+ (void)saveRecentDeal:(BZDeal *)deal
{
    [self recentDeals];
    [_historyDeals removeObject:deal];
    [_historyDeals insertObject:deal atIndex:0];
    [NSKeyedArchiver archiveRootObject:_historyDeals toFile:BZRecentDealsPath];
}

+ (void)deleteRecentDeals:(NSArray *)deals
{
    [_historyDeals removeObjectsInArray:deals];
    [NSKeyedArchiver archiveRootObject:_historyDeals toFile:BZRecentDealsPath];
}

+ (NSMutableArray *)collectDeals
{
    _collectDeals  = [NSKeyedUnarchiver unarchiveObjectWithFile:BZCollectDealsPath];
    if (!_collectDeals) {
        _collectDeals = [NSMutableArray array];
    }
    return _collectDeals;
}

+ (void)saveCollectDeal:(BZDeal *)deal
{
    [self collectDeals];
    [_collectDeals removeObject:deal];
    [_collectDeals insertObject:deal atIndex:0];
    [NSKeyedArchiver archiveRootObject:_collectDeals toFile:BZCollectDealsPath];
}

+ (void)cancelCollectDeal:(BZDeal *)deal
{
    [self collectDeals];
    [_collectDeals removeObject:deal];
    [NSKeyedArchiver archiveRootObject:_collectDeals toFile:BZCollectDealsPath];
}

+ (void)cancelCollectDeals:(NSArray *)deals
{
    [_collectDeals removeObjectsInArray:deals];
    [NSKeyedArchiver archiveRootObject:_collectDeals toFile:BZCollectDealsPath];
}


@end
