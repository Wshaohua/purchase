//
//  BZUserTool.m
//  GroupBuy
//
//  Created by ShaoHua on 15/7/26.
//  Copyright (c) 2015年 Shaohua. All rights reserved.
//

#import "BZUserTool.h"
#define UserPath [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] stringByAppendingPathComponent:@"user.data"]

@implementation BZUserTool

static NSMutableArray *_users;


+ (void)saveUser:(BZUserModel *)user
{
    if (!_users) {
        _users = [NSMutableArray array];
    }
    [_users addObject:user];
    [NSKeyedArchiver archiveRootObject:_users toFile:UserPath];
}

+ (BZUserModel *)user
{
    _users = [NSKeyedUnarchiver unarchiveObjectWithFile:UserPath];
    return [_users firstObject];
}

+ (void)deleteUser
{
    _users = [NSKeyedUnarchiver unarchiveObjectWithFile:UserPath];
    [_users removeAllObjects];
    [NSKeyedArchiver archiveRootObject:_users toFile:UserPath];
}
@end
