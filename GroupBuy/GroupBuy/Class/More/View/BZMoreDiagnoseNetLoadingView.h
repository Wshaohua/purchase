//
//  BZMoreDiagnoseNetLoadingView.h
//  GroupBuy
//
//  Created by ShaoHua on 15/7/30.
//  Copyright (c) 2015年 ShaoHua. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BZMoreDiagnoseNetLoadingView;

@protocol BZMoreDiagnoseNetLoadingViewDelegate <NSObject>

- (void)loadingViewDidStopLoading:(BZMoreDiagnoseNetLoadingView *)loadingView;

@end

@interface BZMoreDiagnoseNetLoadingView : UIView

@property (weak, nonatomic) id <BZMoreDiagnoseNetLoadingViewDelegate> delegate;

+ (instancetype)loadingView;
- (void)beginLoading;

@end
