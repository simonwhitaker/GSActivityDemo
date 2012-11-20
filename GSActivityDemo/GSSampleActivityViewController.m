//
//  GSSampleActivityViewController.m
//  GSActivityDemo
//
//  Created by Simon Whitaker on 19/11/2012.
//  Copyright (c) 2012 Goo Software Ltd. All rights reserved.
//

#import "GSSampleActivityViewController.h"

@interface GSSampleActivityViewController ()

@end

@implementation GSSampleActivityViewController

- (void)dismiss:(id)sender
{
    if ([self.delegate respondsToSelector:@selector(viewControllerShouldDismiss:)]) {
        [self.delegate viewControllerShouldDismiss:self];
    }
}

@end
