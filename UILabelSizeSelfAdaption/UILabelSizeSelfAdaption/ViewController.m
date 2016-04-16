//
//  ViewController.m
//  UILabelSizeSelfAdaption
//
//  Created by liushuai on 16/4/16.
//  Copyright © 2016年 liushuai1992@gmail.com. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+LSLabelSize.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UILabel *label = [[UILabel alloc] init];
    [self.view addSubview:label];
    //不限制label的行数
    label.numberOfLines = 0;
    label.backgroundColor = [UIColor lightGrayColor];
    label.text = @"Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda.";
    CGFloat width = 200;
    //自适应高度，系统默认字号为17
    label.frame = CGRectMake(30, 30, width, [UILabel heightOfLabelWithString:label.text sizeOfFont:17 width:width]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
