//
//  ZYSwipeUpInteractiveTransition.h
//  ZYPush&PopAnimation
//
//  Created by 张昊煜 on 15/10/31.
//  Copyright © 2015年 ZhYu. All rights reserved.
//  手势

#import <UIKit/UIKit.h>

@interface ZYSwipeUpInteractiveTransition : UIPercentDrivenInteractiveTransition

@property (nonatomic, assign) BOOL interacting;

- (void)wireToViewController:(UIViewController*)viewController;

@end
