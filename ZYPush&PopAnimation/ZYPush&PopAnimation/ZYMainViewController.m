//
//  ZYMainViewController.m
//  ZYPush&PopAnimation
//
//  Created by 张昊煜 on 15/10/31.
//  Copyright © 2015年 ZhYu. All rights reserved.
//

#import "ZYMainViewController.h"
#import "ViewController.h"
#import "ZYAnimation.h"

@interface ZYMainViewController ()<ViewControllerDelegate, UIViewControllerTransitioningDelegate>

@property (nonatomic, strong) ZYAnimation *animation;

@end

@implementation ZYMainViewController

#pragma mark - life cycle

- (instancetype)init
{
    if (self = [super init]) {
        _animation = [ZYAnimation new];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupUI];
}

- (void)setupUI
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [button setTitle:@"Click" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];

}

- (void)buttonClicked
{
    ViewController *mvc =  [[ViewController alloc] init];
    mvc.delegate = self;
    mvc.transitioningDelegate = self;
    [self presentViewController:mvc animated:YES completion:nil];
}

#pragma mark - ViewControllerDelegate

- (void)viewControllerDidClickedDismissButton:(ViewController *)viewController
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - UIViewControllerTransitioningDelegate

- (id <UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    return self.animation;
}

@end
