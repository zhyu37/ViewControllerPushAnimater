//
//  ZYAnimation.m
//  ZYPush&PopAnimation
//
//  Created by 张昊煜 on 15/10/31.
//  Copyright © 2015年 ZhYu. All rights reserved.
//

#import "ZYAnimation.h"

@interface ZYAnimation()

@end

@implementation ZYAnimation

#pragma mark - 动画1
//- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext
//{
//    return 0.8f;
//}
//
//- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext
//{
//    // 1. Get controllers from transition context
//    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
//    
//    // 2. Set init frame for toVC
////    CGRect screenBounds = [[UIScreen mainScreen] bounds];
//    CGRect screenBounds = CGRectMake(0, 0, 320, 560);
//    CGRect finalFrame = [transitionContext finalFrameForViewController:toVC];
//    toVC.view.frame = CGRectOffset(finalFrame, 0, screenBounds.size.height);
//    
//    // 3. Add toVC's view to containerView
//    UIView *containerView = [transitionContext containerView];
//    [containerView addSubview:toVC.view];
//    
//    // 4. Do animate now
//    NSTimeInterval duration = [self transitionDuration:transitionContext];
//    [UIView animateWithDuration:duration
//                          delay:0.0
//         usingSpringWithDamping:0.6
//          initialSpringVelocity:0.0
//                        options:UIViewAnimationOptionCurveLinear
//                     animations:^{
//                         toVC.view.frame = finalFrame;
//                     } completion:^(BOOL finished) {
//                         // 5. Tell context that we completed.
//                         [transitionContext completeTransition:YES];
//                     }];
//}

#pragma mark - 动画2

- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext
{
    return 1;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext
{
    UIViewController* toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    UIViewController* fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    [[transitionContext containerView] addSubview:toViewController.view];
    toViewController.view.alpha = 0;
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        fromViewController.view.transform = CGAffineTransformMakeScale(0.1, 0.1);
        toViewController.view.alpha = 1;
    } completion:^(BOOL finished) {
        fromViewController.view.transform = CGAffineTransformIdentity;
        [transitionContext completeTransition:![transitionContext transitionWasCancelled]];
        
    }];
}

@end
