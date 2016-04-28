//
//  BZSaveMessageTool.m
//  GroupBuy
//
//  Created by ShaoHua on 15/7/26.
//  Copyright (c) 2015年 Shaohua. All rights reserved.
//

#import "BZSaveMessageTool.h"
#define cityPath [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"city.data"]

#define regionPath [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"region.data"]

@implementation BZSaveMessageTool

+ (void)saveLastSelCity:(BZCityModel *)city
{
    [NSKeyedArchiver archiveRootObject:city toFile:cityPath];
}

+ (void)saveLastSelregion:(BZCityRegionModel *)region
{
     [NSKeyedArchiver archiveRootObject:region toFile:regionPath];
}

+ (BZCityModel *)getLastSelCity
{
    return [NSKeyedUnarchiver unarchiveObjectWithFile:cityPath];
}

+ (BZCityRegionModel *)getLastSelRegion
{
    return [NSKeyedUnarchiver unarchiveObjectWithFile:regionPath];
}

@end
