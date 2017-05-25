# QYPicker
普通列表选择器和日期选择器

![](http://upload-images.jianshu.io/upload_images/1216368-85d575593d9ed27d.gif?imageMogr2/auto-orient/strip)

#使用方法:

- 1.调用工厂方法创建,设置frame
- 2.设置数据源数组
- 3.设置选择确定的block

```
- (IBAction)btn1Click:(UIButton *)sender {
    QYRegionPickerView *pickerV = [QYRegionPickerView regionView];
    pickerV.frame = [UIScreen mainScreen].bounds;
    NSArray *pickerSourceArr = @[@"乌鲁木齐",@"昌吉"]; // 0是乌鲁木齐市 1是昌吉
    pickerV.pickerSourceArr = pickerSourceArr;
    pickerV.pickSuccessBlock = ^(NSInteger arrIndex) {
        NSString* str = pickerSourceArr[arrIndex];
        [sender setTitle:str forState:UIControlStateNormal];
    };
    
    [self.view addSubview:pickerV];
}
```


日期选择

```

- (IBAction)btn2Click:(UIButton *)sender {
    QYDatePickerView *pickerV = [QYDatePickerView datePickerView];
    pickerV.frame = [UIScreen mainScreen].bounds;
    pickerV.pickDateSuccessBlock = ^(NSString *dateStr) {
        [sender setTitle:dateStr forState:UIControlStateNormal];
    };
    
    [self.view addSubview:pickerV];
}
```
