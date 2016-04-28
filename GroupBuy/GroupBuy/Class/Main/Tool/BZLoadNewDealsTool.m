//
//  BZLoadNewDealsTool.m
//  GroupBuy
//
//  Created by ShaoHua on 15/7/26.
//  Copyright (c) 2015年 Shaohua. All rights reserved.
//

#import "BZLoadNewDealsTool.h"
#import "DPAPI.h"
#import "MJExtension.h"

@interface BZLoadNewDealsTool ()<DPRequestDelegate>
@property (strong, nonatomic) BZLoadNewDealsResultModel *result;
@property (strong, nonatomic) NSError *error;

@end


@implementation BZLoadNewDealsTool


- (void)loadNewDealsWithParms:(BZLoadNewDealsParamsModel *)params success:(void (^)(BZLoadNewDealsResultModel *))success failure:(void (^)(NSError *))failure
{
    DPAPI *dpi = [[DPAPI alloc]init];
    [dpi requestWithURL:@"v1/deal/find_deals" params:(NSMutableDictionary *)[params keyValues] delegate:self];
    
    if (self.result) {
        success(self.result);
    }
    if (self.error) {
        failure(self.error);
    }
}

- (void)request:(DPRequest *)request didFailWithError:(NSError *)error
{
    self.error = error;
    NSLog(@"error");
}

- (void)request:(DPRequest *)request didFinishLoadingWithResult:(id)result
{
    self.result = [BZLoadNewDealsResultModel objectWithKeyValues:result];
    NSLog(@"success");
}


@end
