//
//  UITextView+PlaceHolder.m
//  分类 运行时实现自定义控件集合
//
//  Created by tang on 15/8/9.
//  Copyright (c) 2015年 company. All rights reserved.
//

#import "UITextView+PlaceHolder.h"
#import <objc/runtime.h>


//运行时对象关联实现 类 属性 的添加
@implementation UITextView (PlaceHolder)

-(NSString*)placeholder
{
    return objc_getAssociatedObject(self, @"placeholder");
}



- (void)setPlaceholder:(NSString *)placeholder
{
    //设置关联
    objc_setAssociatedObject(self, @"placeholder", placeholder, OBJC_ASSOCIATION_COPY);
    UILabel *label=[[UILabel alloc]init];
    label.x=5;
    label.y=8;
    label.font=[UIFont systemFontOfSize:14];
    self.font=[UIFont systemFontOfSize:14];
    label.text=placeholder;
    label.size=[label.text sizeWithFont:label.font];
    [self addSubview:label];
    
    
    
    
    
}



@end
