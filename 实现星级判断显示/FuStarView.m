//
//  FuStarView.m
//  SYCRealEstatePlatform
//
//  Created by 付吉祥 on 17/7/10.
//  Copyright © 2017年 WZT. All rights reserved.
//

#import "FuStarView.h"

#define StarsFont         [UIFont systemFontOfSize:18]
//星星大小的宏定义

@implementation FuStarView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.backgroundColor = [UIColor clearColor];
        
        //未点亮时的颜色是 灰色的
        self.emptyColor = [UIColor grayColor];
        
        //点亮时的颜色是 亮黄色的
        self.fullColor = [UIColor orangeColor];
        
        //默认的长度设置为100
        self.maxStar = 100;
    }
    
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    NSString* stars = @"★★★★★";
    
    NSDictionary *dictionary = [[NSDictionary alloc] initWithObjectsAndKeys: StarsFont, NSFontAttributeName,_emptyColor,NSForegroundColorAttributeName,nil];

    
    rect = self.bounds;
    CGSize starSize = [stars sizeWithAttributes:dictionary];
    rect.size=starSize;
    //[stars drawInRect:rect withFont:StarsFont];
    [stars drawInRect:rect withAttributes:dictionary];
    
    
    NSDictionary *dictionary1 = [[NSDictionary alloc] initWithObjectsAndKeys: StarsFont, NSFontAttributeName,_fullColor,NSForegroundColorAttributeName,nil];
    CGRect clip = rect;
    clip.size.width = clip.size.width * _showStar / _maxStar;
    CGContextClipToRect(context,clip);
    [stars drawInRect:rect withAttributes:dictionary1];
}

@end
