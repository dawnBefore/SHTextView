//
//  ViewController.m
//  SHTextView
//
//  Created by 宋浩文的pro on 16/4/12.
//  Copyright © 2016年 宋浩文的pro. All rights reserved.
//

#import "ViewController.h"
#import "SHTextView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SHTextView *textView = [[SHTextView alloc] initWithFrame:CGRectMake(100, 100, 300, 40)];
    textView.font = [UIFont systemFontOfSize:16];
    textView.placeholder = @"说点啥吧...";
    /** 是否可以伸缩 */
    textView.isCanExtend = YES;
    /** 伸缩行数 */
    textView.extendLimitRow = 4;
    /** 伸缩方向 */
    textView.extendDirection = ExtendUp;
    textView.layer.borderWidth = 1;
    [self.view addSubview:textView];
}

@end
