//
//  GSSampleActivity.m
//  GSActivityDemo
//
//  Created by Simon Whitaker on 19/11/2012.
//  Copyright (c) 2012 Goo Software Ltd. All rights reserved.
//

#import "GSSampleActivity.h"
#import "GSSampleActivityViewController.h"

@interface GSSampleActivity() <GSSampleActivityViewControllerDelegate>

@end

@implementation GSSampleActivity

- (NSString *)activityType {
    return @"GSSampleActivityType";
}

- (NSString *)activityTitle {
    return @"Sample";
}

- (UIImage *)activityImage
{
    return [UIImage imageNamed:@"activity-image"];
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems {
    return YES;
}

- (UIViewController *)activityViewController {
    GSSampleActivityViewController *vc = [[GSSampleActivityViewController alloc] initWithNibName:nil bundle:nil];
    vc.delegate = self;
    return vc;
}

#pragma mark - GSSampleActivityViewController delegate method

- (void)viewControllerShouldDismiss:(GSSampleActivityViewController *)viewController
{
    [self activityDidFinish:YES];
}

@end
