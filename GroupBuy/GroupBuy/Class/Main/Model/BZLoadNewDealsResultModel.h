//
//  BZLoadNewDealsResultModel.h
//  GroupBuy
//
//  Created by ShaoHua on 15/7/21.
//  Copyright (c) 2015年 ShaoHua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BZLoadNewDealsResultModel : NSObject

/** count	int	本次API访问所获取的单页团购数量 */
@property (assign, nonatomic) int count;

/** 团购信息 */
@property (strong, nonatomic) NSArray *deals;

@end
