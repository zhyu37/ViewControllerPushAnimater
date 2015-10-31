//
//  ViewController.m
//  ZYPush&PopAnimation
//
//  Created by 张昊煜 on 15/10/30.
//  Copyright © 2015年 ZhYu. All rights reserved.
//

#import "ZYViewController.h"

@interface ZYViewController ()

@end

@implementation ZYViewController

#pragma mark - life cycle

- (instancetype)init
{
    if (self = [super init]) {
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI
{
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [button setTitle:@"Dismiss" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonClicked
{
    if ([self.delegate respondsToSelector:@selector(viewControllerDidClickedDismissButton:)]) {
        [self.delegate viewControllerDidClickedDismissButton:self];
    }
}

@end
