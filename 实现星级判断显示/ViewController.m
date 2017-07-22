//
//  ViewController.m
//  实现星级判断显示
//
//  Created by 付吉祥 on 17/7/17.
//  Copyright © 2017年 siyucloud. All rights reserved.
//

#import "ViewController.h"
#import "FuStarView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    FuStarView * starView = [[FuStarView alloc]initWithFrame:CGRectMake(100, 200, 100, 20)];
    [self.view addSubview:starView];
    starView.showStar = 4.6f * 20;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
