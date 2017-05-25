//
//  QYRegionPickerView.m
//  QYPicker
//
//  Created by YannChee on 12/05/2017.
//  Copyright © 2017 YannChee. All rights reserved.
//

#import "QYRegionPickerView.h"

@interface QYRegionPickerView () <UIPickerViewDataSource,UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;
/** 选中的行索引 */
@property (nonatomic,assign)NSInteger selectedIndex;
@end

@implementation QYRegionPickerView

+ (instancetype)regionView {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] firstObject];
}

#pragma mark - 按钮点确定
- (IBAction)confirmBtnClick:(id)sender {
    self.pickSuccessBlock(self.selectedIndex);
    [self removeFromSuperview];
}

#pragma mark - 按钮点取消
- (IBAction)removeBtnClick:(id)sender {
    [self removeFromSuperview];
}

#pragma Mark -- UIPickerViewDataSource
// pickerView 列数
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}

// pickerView 每列个数
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [self.pickerSourceArr count];
}

#pragma Mark -- UIPickerViewDelegate
// 每列宽度
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component {
    
    if (component == 1) {
        return 40;
    }
    return 180;
}
// 返回选中的行
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    
    self.selectedIndex = row;
}

//返回当前行的内容,此处是将数组中数值添加到滚动的那个显示栏上
-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    return [self.pickerSourceArr objectAtIndex:row];
    
}


@end
