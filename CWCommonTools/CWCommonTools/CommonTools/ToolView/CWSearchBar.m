//
//  CWSearchBar.m
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/7.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "CWSearchBar.h"

@interface CWSearchBar ()<UISearchBarDelegate>
@property (nonatomic, weak) UIButton *coverButton;


@end

@implementation CWSearchBar

- (instancetype)init
{
    (self = [super init])? [self setSearchBar] : 0;
    return self;
}

- (void)setSearchBar
{
    self.frame = CGRectMake(80, 10, SCREEN_W-160, 26);
    
    NSArray *viewArray = self.subviews;
    for (NSUInteger i = 0; i < viewArray.count; i++) {
        UIView *view = viewArray[i];
        if (viewArray.count - 2 == i) {
            view.backgroundColor = [UIColor whiteColor];
        }else {
            view.backgroundColor = [UIColor clearColor];
        }
    }
    self.backgroundImage = [UIImage imageWithCIImage:[CIImage imageWithColor:[CIColor colorWithRed:31/255.0 green:147/255.0 blue:227/255.0 alpha:1.0]]];
    self.delegate = self;
    self.showsCancelButton = NO;
    
}

#pragma mark - 搜索条代理
- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar
{
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 64, SCREEN_W, SCREEN_H-64)];
    self.coverButton = button;
    button.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    [button addTarget:self action:@selector(resignSearchbar:) forControlEvents:UIControlEventTouchUpInside];
    [KeyWindowView addSubview:button];
    return YES;
}

- (void)resignSearchbar:(UIButton *)sender
{
    [sender removeFromSuperview];
    [self resignFirstResponder];
    // 如果崩溃在此处, 是因为点击遮罩, 没有实现遮罩block, 实现block,不需要写其他代码
    self.coverButtonBlock();
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText
{
    // 如果崩溃在此处, 没有实现textBlock获取值
    self.textBock(searchText);
}

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    self.searchBlock();
    
    [self.coverButton removeFromSuperview];
    [searchBar resignFirstResponder];
}

- (void)removeButton
{
    [self.coverButton removeFromSuperview];
}






@end
