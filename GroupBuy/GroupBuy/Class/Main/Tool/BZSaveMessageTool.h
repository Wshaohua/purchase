//
//  BZSaveMessageTool.h
//  GroupBuy
//
//  Created by ShaoHua on 15/7/26.
//  Copyright (c) 2015年 Shaohua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BZCityModel.h"
#import "BZCityRegionModel.h"

@interface BZSaveMessageTool : NSObject

+ (void)saveLastSelCity:(BZCityModel *)city;
+ (void)saveLastSelregion:(BZCityRegionModel *)region;
+ (BZCityModel *)getLastSelCity;
+ (BZCityRegionModel *)getLastSelRegion;

@end
