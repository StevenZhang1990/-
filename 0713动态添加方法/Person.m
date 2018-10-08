//
//  Person.m
//  0713动态添加方法
//
//  Created by StevenZhang on 2018/7/13.
//  Copyright © 2018年 StevenZhang. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>

@implementation Person

//判断类方法是否存在
+(BOOL)resolveClassMethod:(SEL)sel {
    return [super resolveClassMethod:sel];
}

//判断实例方法是否存在
+(BOOL)resolveInstanceMethod:(SEL)sel {
    
    class_addMethod(self, sel, (IMP)testDemo, "v@:@");//如果找不到就执行testDemo方法
    
    return [super resolveInstanceMethod:sel];
}

void testDemo(id obj, SEL sel, NSString * objctive) {
    
    NSLog(@"obj--%@",obj);
    NSLog(@"sel--%@",NSStringFromSelector(sel));
    NSLog(@"吃了---%@",objctive);
}

@end
