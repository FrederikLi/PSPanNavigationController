//
//  PSAppDelegate.m
//  PSSwipeController
//
//  Created by Andrew Carter on 6/20/13.
//  Copyright (c) 2013 PinchStudios. All rights reserved.
//

#import "PSAppDelegate.h"

#import "PSPanNavigationController.h"

@implementation PSAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self setWindow:[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]]];
    [[self window] setBackgroundColor:[UIColor whiteColor]];
    
    PSPanNavigationController *swipeViewController = [PSPanNavigationController new];
    [[self window] setRootViewController:swipeViewController];
    
    UIViewController *redController = [UIViewController new];
    [[redController view] setBackgroundColor:[UIColor redColor]];
    [swipeViewController setLeftViewController:redController];
    
    UIViewController *greenController = [UIViewController new];
    [[greenController view] setBackgroundColor:[UIColor greenColor]];
    [swipeViewController setRightViewController:greenController];
    
    [[self window] makeKeyAndVisible];
    return YES;
}

@end
