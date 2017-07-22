//
//  FuStarView.h
//  SYCRealEstatePlatform
//
//  Created by 付吉祥 on 17/7/10.
//  Copyright © 2017年 WZT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FuStarView : UIView

@property (nonatomic, assign) NSInteger maxStar;        // 最大值
@property (nonatomic, assign) NSInteger showStar;       // 显示值
@property (nonatomic, strong) UIColor *emptyColor;      // 空颜色
@property (nonatomic, strong) UIColor *fullColor;       // 满颜色

@end
