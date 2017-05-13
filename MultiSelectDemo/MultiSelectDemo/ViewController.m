//
//  ViewController.m
//  MultiSelectDemo
//
//  Created by xyj on 17/5/10.
//  Copyright © 2017年 xyj. All rights reserved.
//

#import "ViewController.h"
#import "ZHMultiSelectView.h"
@interface ViewController ()
@property (nonatomic,strong) ZHMultiSelectView *xview;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
  _xview = [ZHMultiSelectView createMultiSelectViewWithTitle:@"ssssss" andDataArray:@[@"123",@"333",@"444",@"333",@"444",@"333",@"444"] completeSelect:^(NSArray *selectArray) {
        NSLog(@"%@",selectArray);
      NSString *str = [selectArray componentsJoinedByString:@","];
      self.textView.text = str;
    }];
}
-(void)dealloc{
    NSLog(@"%s",__func__);
}

@end
