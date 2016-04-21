# SHTextView支持属性
* 自适应高度
* 行数限制
* 伸长方向
* placeholder
* placeholderColor

<img src="http://d3.freep.cn/3tb_1604211233083yk5562651.gif" />

# 如何使用
```objc

// 工具条
UIView *toolbar = [[UIView alloc] init];
_toolbar = toolbar;
toolbar.backgroundColor = [UIColor colorWithRed:244/255.0 green:244/255.0 blue:244/255.0 alpha:1];
[self.view addSubview:toolbar];
[toolbar mas_makeConstraints:^(MASConstraintMaker *make) {
make.left.equalTo(self.view.mas_left);
make.right.equalTo(self.view.mas_right);
make.bottom.equalTo(self.view.mas_bottom).offset(-400);   // 这个是向上伸缩
// make.top.equalTo(self.view.mas_top).offset(100);    // 修改一下依赖，就向下伸缩了
make.height.mas_equalTo(@44).priorityLow();
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
```

# 联系方式
* QQ: 1097288750