//
//  ViewController.m
//  QYPicker
//
//  Created by YannChee on 12/05/2017.
//  Copyright © 2017 YannChee. All rights reserved.
//

#import "ViewController.h"
#import "QYRegionPickerView.h"
#import "QYDatePickerView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    
    
}

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


- (IBAction)btn2Click:(UIButton *)sender {
    QYDatePickerView *pickerV = [QYDatePickerView datePickerView];
    pickerV.frame = [UIScreen mainScreen].bounds;
    pickerV.pickDateSuccessBlock = ^(NSString *dateStr) {
        [sender setTitle:dateStr forState:UIControlStateNormal];
    };
    
    [self.view addSubview:pickerV];
}


@end
