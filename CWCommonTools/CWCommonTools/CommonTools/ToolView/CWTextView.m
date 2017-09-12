//
//  CWTextView.m
//  CommonTools
//
//  Created by 深圳策维科技有限公司 on 2017/9/7.
//  Copyright © 2017年 深圳策维科技有限公司. All rights reserved.
//

#import "CWTextView.h"

@implementation CWTextView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textChanged:) name:UITextViewTextDidChangeNotification object:nil];
        self.autoresizesSubviews = NO;
        self.placeholder = @"";
        self.placeholderColor = [UIColor lightGrayColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    if ([self.text isEqualToString:@""]) {
        
        CGRect placeholderRect;
        placeholderRect.origin.y = 8;
        placeholderRect.size.height = CGRectGetHeight(self.frame)-8;
        placeholderRect.origin.x = 5;
        placeholderRect.size.width = CGRectGetWidth(self.frame)-5;
        [self.placeholderColor set];
        NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc]init];
        style.lineBreakMode = NSLineBreakByWordWrapping;
        style.alignment = NSTextAlignmentLeft;
        
        [self.placeholder drawInRect:rect withFont:self.font lineBreakMode:NSLineBreakByWordWrapping alignment:NSTextAlignmentLeft];
    }
}

- (void)textChanged:(NSNotification *)notification
{
    [self setNeedsDisplay];
}

- (void)setText:(NSString *)text
{
    [super setText:text];
    
    [self setNeedsDisplay];
}




@end
