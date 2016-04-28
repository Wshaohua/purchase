//
//  BZLoadNewDealsResultModel.m
//  GroupBuy
//
//  Created by ShaoHua on 15/7/21.
//  Copyright (c) 2015年 Shaohua. All rights reserved.
//

#import "BZLoadNewDealsResultModel.h"
#import "MJExtension.h"
#import "BZDeal.h"

@implementation BZLoadNewDealsResultModel
- (NSDictionary *)objectClassInArray
{
    return @{@"deals" : [BZDeal class]};
}
@end
