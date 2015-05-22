//
//  Continuous_Integration_Test_UI_Tests.m
//  Continuous Integration Test UI Tests
//
//  Created by Groom, Stephen on 22/05/2015.
//  Copyright (c) 2015 Sage. All rights reserved.
//

#import <KIF.h>
#import "KIFTestActor+Additions.h"

@interface UITestCase : KIFTestCase

@end

@implementation UITestCase

- (void)testDetailViewControllers
{
    [tester navigateAndCheckDetailControllerWithTitle:@"First"];
    [tester returnToRoot];
    [tester navigateAndCheckDetailControllerWithTitle:@"Second"];
    [tester returnToRoot];
    [tester navigateAndCheckDetailControllerWithTitle:@"Third"];
    [tester returnToRoot];
}

@end
