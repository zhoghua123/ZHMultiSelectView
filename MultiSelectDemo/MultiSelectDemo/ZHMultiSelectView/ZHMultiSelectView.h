//
//  ZHMultiSelectView.h
//  MultiSelectDemo
//
//  Created by xyj on 17/5/10.
//  Copyright © 2017年 xyj. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZHMultiSelectView : UIView

/**

 注意:selectArray.count = 0 代表:1.点击了背景 2.点击了取消 3.没选任何东西点击了确定
 @param title 标题
 @param dataArray 数据源
 @param completeSelect 返回选择的数组
 */
+(instancetype)createMultiSelectViewWithTitle:(NSString *)title andDataArray:(NSArray *)dataArray completeSelect:(void(^)(NSArray *selectArray))completeSelect;


@end
