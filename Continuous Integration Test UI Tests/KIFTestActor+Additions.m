//
//  KIFTestActor+Additions.m
//  Continuous Integration Test
//
//  Created by Groom, Stephen on 22/05/2015.
//  Copyright (c) 2015 Sage. All rights reserved.
//

#import "KIFTestActor+Additions.h"

@implementation KIFUITestActor (Additions)

- (void)returnToRoot
{
    [self tapViewWithAccessibilityLabel:@"Back"];
    [self waitForViewWithAccessibilityLabel:@"ItemCell"];
}

- (void)navigateAndCheckDetailControllerWithTitle:(NSString *)title
{
    [self tapViewWithAccessibilityLabel:title];
    [self waitForViewWithAccessibilityLabel:@"DetailTitle" value:title traits:0];
}

@end
