# SHTextView
* 自适应高度
* 行数限制
* 伸长方向
* placeholder
* placeholder颜色等

<img src="http://file.bmob.cn/M03/27/BE/oYYBAFcM0ayAbka_AAK9jFstGOA620.gif" />

# 如何使用
```objc
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
```

# 联系方式
* QQ: 1097288750