//
//  GSAppDelegate.h
//  GSActivityDemo
//
//  Created by Simon Whitaker on 19/11/2012.
//  Copyright (c) 2012 Goo Software Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GSViewController;

@interface GSAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) GSViewController *viewController;

@end
