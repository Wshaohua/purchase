//
//  UIImage+Extension.h
//  GroupBuy
//
//  Created by ShaoHua on 15/6/7.
//  Copyright (c) 2015年 ShaoHua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extension)
//+(UIImage *)imageWithName:(NSString *)name;
+ (UIImage *)resizeImageWithName:(NSString *)imageName;
- (UIImage *) scaleFromImage: (UIImage *) image toSize: (CGSize) size;
+ (UIImage *) scaleFromImage:(UIImage *)image;
-(UIImage*)getSubImage:(CGRect)rect;
@end
