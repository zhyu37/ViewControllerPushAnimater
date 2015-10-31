//
//  ViewController.h
//  ZYPush&PopAnimation
//
//  Created by 张昊煜 on 15/10/30.
//  Copyright © 2015年 ZhYu. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;
@protocol ViewControllerDelegate <NSObject>

-(void) viewControllerDidClickedDismissButton:(ViewController *)viewController;

@end

@interface ViewController : UIViewController

@property (nonatomic, weak) id<ViewControllerDelegate> delegate;

@end

