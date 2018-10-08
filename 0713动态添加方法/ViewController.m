//
//  ViewController.m
//  0713动态添加方法
//
//  Created by StevenZhang on 2018/7/13.
//  Copyright © 2018年 StevenZhang. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/message.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Person * p = [[Person alloc] init];
    
    [p performSelector:@selector(eat:) withObject:@"汉堡"];
//    objc_msgSend(p,sel_registerName("eat:"),@"汉堡");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
