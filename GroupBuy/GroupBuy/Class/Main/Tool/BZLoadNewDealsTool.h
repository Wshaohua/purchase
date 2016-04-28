//
//  BZLoadNewDealsTool.h
//  GroupBuy
//
//  Created by ShaoHua on 15/7/26.
//  Copyright (c) 2015年 Shaohua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BZLoadNewDealsParamsModel.h"
#import "BZLoadNewDealsResultModel.h"

@interface BZLoadNewDealsTool : NSObject



- (void)loadNewDealsWithParms:(BZLoadNewDealsParamsModel *)params success:(void(^)(BZLoadNewDealsResultModel *result))success failure:(void(^)(NSError *error))failure;

@end
