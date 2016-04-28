//
//  BZGroupBuyBaseTableViewController.h
//  GroupBuy
//
//  Created by ShaoHua on 15/6/7.
//  Copyright (c) 2015年 ShaoHua. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BZLoadNewDealsParamsModel.h"

@interface BZGroupBuyBaseTableViewController : UITableViewController
- (void)setParams:(NSMutableDictionary *)params;
- (void)loadNewDeals;
@property (strong, nonatomic) NSMutableArray *deals;
@end
