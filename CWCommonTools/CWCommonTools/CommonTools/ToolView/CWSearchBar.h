//
//  CWSearchBar.h
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/7.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

// 文本回调
typedef void(^TextBlock) (NSString *text);
// 动作回调
typedef void(^ActionBlock) ();

@interface CWSearchBar : UISearchBar

@property(nonatomic,copy)TextBlock textBock;
@property(nonatomic,copy)ActionBlock searchBlock;
@property(nonatomic,copy)ActionBlock coverButtonBlock;

- (void)removeButton;


@end
