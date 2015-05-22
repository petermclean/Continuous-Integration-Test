//
//  KIFTestActor+Additions.h
//  Continuous Integration Test
//
//  Created by Groom, Stephen on 22/05/2015.
//  Copyright (c) 2015 Sage. All rights reserved.
//

#import "KIFUITestActor.h"

@interface KIFUITestActor (Additions)

- (void)returnToRoot;
- (void)navigateAndCheckDetailControllerWithTitle:(NSString *)title;

@end
