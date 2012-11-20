//
//  GSViewController.m
//  GSActivityDemo
//
//  Created by Simon Whitaker on 19/11/2012.
//  Copyright (c) 2012 Goo Software Ltd. All rights reserved.
//

#import "GSViewController.h"
#import "GSSampleActivity.h"

@interface GSViewController ()
@property (nonatomic, strong) UIPopoverController *activityPopoverController;
@end

@implementation GSViewController

- (void)showActivities:(id)sender
{
    if ([self.activityPopoverController isPopoverVisible]) {
        [self.activityPopoverController dismissPopoverAnimated:YES];
    } else {
        NSArray *activityItems = @[
            @"Tinker",
            @"Tailor",
            @"Soldier",
            @"Rich Man",
            @"Beggarman",
        ];
        
        NSArray *applicationActivities = @[
            [[GSSampleActivity alloc] init],
        ];
        
        UIActivityViewController *vc = [[UIActivityViewController alloc] initWithActivityItems:activityItems
                                                                         applicationActivities:applicationActivities];
        vc.completionHandler = ^(NSString *activityType, BOOL completed){
            [self.activityPopoverController dismissPopoverAnimated:YES];
        };
        
        self.activityPopoverController = [[UIPopoverController alloc] initWithContentViewController:vc];
        [self.activityPopoverController presentPopoverFromRect:[(UIControl *)sender frame]
                                                        inView:self.view
                                      permittedArrowDirections:UIPopoverArrowDirectionAny
                                                      animated:YES];
    }
}

@end
