//
//  ViewController.m
//  CWCommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/12.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "ViewController.h"

#import "Header.h"

#import <LocalAuthentication/LocalAuthentication.h>

@interface ViewController ()<UITextFieldDelegate>

@property (nonatomic, weak) UITextField *textField;

@end

@implementation ViewController

- (UITextField *)textField
{
    if (!_textField) {
        _textField = [ToolView textFieldWithFrame:CGRectZero placeholder:nil textColor:[UIColor redColor] setTintColor:[UIColor blueColor] cornerRadius:5 borderWidth:1 borderColor:[UIColor orangeColor] clearButtonMode:UITextFieldViewModeWhileEditing keyboardType:UIKeyboardTypeDefault returnKeyType:UIReturnKeyDone];
        _textField.delegate = self;
    }
    return _textField;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *v = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 300, 300)];
    v.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:v];
    
    // lab 便利构造器
    UILabel *label = [ToolView labelWithFrame:CGRectMake(150, 200, 100, 60) text:@"布告" font:15 textColor:[UIColor orangeColor]];
    [v addSubview:label];
    
    // imageView 便利构造器
    UIImageView *imageV = [ToolView imageViewWithFrame:CGRectMake(150, 200, 100, 60) normalImage:@"unread" highlightedImage:@"read" contentMode:UIViewContentModeScaleAspectFit];
    [self.view addSubview:imageV];
    
    // textView
    CWTextView *textView = [[CWTextView alloc]initWithFrame:CGRectMake(10, 100, 350, 40)];
    textView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:textView];
    
    
    // 搜索条
    CWSearchBar *bar = [[CWSearchBar alloc]init];
    bar.frame = CGRectMake(10, 100, 350, 50);
    [self.view addSubview:bar];
    
    bar.textBock = ^(NSString *text) {
        NSLog(@"sd: %@", text);
    };
    bar.coverButtonBlock = ^{
        // 移除视图
    };
    
    // textField
    self.textField.frame = CGRectMake(100, 100, 200, 40);
    self.textField.placeholder = @"你好";
    [self.view addSubview:_textField];
    
    // 时间与时间戳转换
    NSString *dateStr = [DateAndTimestamp dateStringTransformFromNSDate];
    NSString *timestamp = [DateAndTimestamp getNowTimeTimestamp];
    NSString *dateString = [DateAndTimestamp currentTimeTransformFromTimestamp:@"1504855601046"];
    NSDate *date = [DateAndTimestamp dateTranformFromTimestamp:timestamp];
    NSDate *date1 = [DateAndTimestamp dateEarlyOrDelayedWithTimeInterval:6];
    
    // 绘制圆形
    UIView *circleV = [KCWGraphic createCornerBgViewWithSuperView:self.view frame:CGRectMake(100, 100, 200, 200) withHEXStr:@"0x6e6e6e" cornerRadius:100];
    
    // 验证并开启指纹解锁
    [KCWTouchIDManager evaluateAuthenticate];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
