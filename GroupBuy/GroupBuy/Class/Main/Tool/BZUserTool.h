//
//  BZUserTool.h
//  GroupBuy
//
//  Created by ShaoHua on 15/7/26.
//  Copyright (c) 2015年 Shaohua. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BZUserModel;
@interface BZUserTool : NSObject

+ (void)saveUser:(BZUserModel *)user;
+ (BZUserModel *)user;
+ (void)deleteUser;
@end
