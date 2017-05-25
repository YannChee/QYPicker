//
//  QYDatePickerView.m
//  QYPicker
//
//  Created by YannChee on 12/05/2017.
//  Copyright © 2017 YannChee. All rights reserved.
//

#import "QYDatePickerView.h"

@interface QYDatePickerView ()

@property (weak, nonatomic) IBOutlet UIDatePicker *datePicker;


@end
@implementation QYDatePickerView

+ (instancetype)datePickerView {
    return [[[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:nil] firstObject];
}

#pragma mark - 按钮点确定
- (IBAction)confirmBtnClick:(id)sender {
    NSDate *date = self.datePicker.date;
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSString  *string = [dateFormatter stringFromDate:date];
//    NSLog(@"shijia=====%@",string);
    
    self.pickDateSuccessBlock(string);
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

@end
