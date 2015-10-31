//
//  ViewController.h
//  ZYPush&PopAnimation
//
//  Created by 张昊煜 on 15/10/30.
//  Copyright © 2015年 ZhYu. All rights reserved.
//  跳转的视图

#import <UIKit/UIKit.h>

@class ZYViewController;
@protocol ViewControllerDelegate <NSObject>

-(void) viewControllerDidClickedDismissButton:(ZYViewController *)viewController;

@end

@interface ZYViewController : UIViewController

@property (nonatomic, weak) id<ViewControllerDelegate> delegate;

@end

