//
//  GSSampleActivityViewController.h
//  GSActivityDemo
//
//  Created by Simon Whitaker on 19/11/2012.
//  Copyright (c) 2012 Goo Software Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol GSSampleActivityViewControllerDelegate;

@interface GSSampleActivityViewController : UIViewController

@property (nonatomic, weak) id<GSSampleActivityViewControllerDelegate> delegate;

- (IBAction)dismiss:(id)sender;

@end



@protocol GSSampleActivityViewControllerDelegate <NSObject>

- (void)viewControllerShouldDismiss:(GSSampleActivityViewController*)viewController;

@end