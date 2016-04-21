//
//  TwoViewController.m
//  SHTextView
//
//  Created by 宋浩文的pro on 16/4/21.
//  Copyright © 2016年 宋浩文的pro. All rights reserved.
//

#import "TwoViewController.h"
#import "SHTextView.h"
#import "Masonry.h"

@interface TwoViewController ()<SHTextViewDelegate>

@property (nonatomic, strong) SHTextView *textView;

@property (nonatomic, strong) UIView *toolbar;

@property (nonatomic, strong) UIButton *sendBtn;

@end

@implementation TwoViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    // 工具条
    UIView *toolbar = [[UIView alloc] init];
    _toolbar = toolbar;
    toolbar.backgroundColor = [UIColor colorWithRed:244/255.0 green:244/255.0 blue:244/255.0 alpha:1];
    [self.view addSubview:toolbar];
    [toolbar mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view.mas_left);
        make.right.equalTo(self.view.mas_right);
        make.top.equalTo(self.view.mas_top).offset(100);    // 修改一下依赖，就向下伸缩了
        make.height.mas_equalTo(@44).priorityLow();
    }];
    
    //发送按钮
    UIButton *sendBtn = [[UIButton alloc] init];
    _sendBtn = sendBtn;
    sendBtn.backgroundColor = [UIColor colorWithRed:183/255.0 green:93/255.0 blue:144/255.0 alpha:1];
    [sendBtn setTitle:@"提交" forState:UIControlStateNormal];
    sendBtn.layer.cornerRadius = 5;
    [toolbar addSubview:sendBtn];
    [sendBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(toolbar.mas_right).offset(-5);
        make.bottom.equalTo(toolbar.mas_bottom).offset(-7);
        make.height.mas_equalTo(@30);
        make.width.mas_equalTo(@50);
    }];
    
    
    // 输入框
    SHTextView *textView = [[SHTextView alloc] init];
    _textView = textView;
    textView.font = [UIFont systemFontOfSize:16];
    textView.placeholder = @"输入文字测试...";
    textView.delegate = self;
    /** 是否可以伸缩 */
    textView.isCanExtend = YES;
    /** 伸缩行数 */
    textView.extendLimitRow = 4;
    textView.layer.borderWidth = 1;
    textView.layer.borderColor = [UIColor colorWithRed:122/255.0 green:122/255.0 blue:122/255.0 alpha:1].CGColor;
    textView.layer.cornerRadius = 3;
    [toolbar addSubview:textView];
    [textView mas_updateConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(toolbar.mas_left).offset(5);
        make.right.equalTo(sendBtn.mas_left).offset(-10);
        make.bottom.equalTo(toolbar.mas_bottom).offset(-5);
        make.top.equalTo(toolbar.mas_top).offset(5);
    }];
}

@end
