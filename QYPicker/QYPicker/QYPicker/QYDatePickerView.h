//
//  QYDatePickerView.h
//  QYPicker
//
//  Created by YannChee on 12/05/2017.
//  Copyright © 2017 YannChee. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QYDatePickerView : UIView
/** 外界数据源数组 */
@property (nonatomic,strong)NSArray * pickerSourceArr; // 要展示的地区


typedef void (^PickDateSuccessBlock)(NSString *dateStr);
/** 成功时回调 */
@property (nonatomic,strong)PickDateSuccessBlock pickDateSuccessBlock;



+ (instancetype)datePickerView;
@end
