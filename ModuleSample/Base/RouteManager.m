//
//  RouteManager.m
//  ModuleSample
//
//  Created by LinXi on 28/02/2018.
//  Copyright © 2018 maitao. All rights reserved.
//

#import "RouteManager.h"
#import <UIKit/UIKit.h>
#import <BeeHive/BeeHive.h>

@implementation RouteManager

+ (instancetype)shareInstance {
    static dispatch_once_t onceToken;
    static RouteManager *manager = nil;
    dispatch_once(&onceToken, ^{
        manager = [[RouteManager alloc] init];
    });
    return manager;
}

- (void)popToRoot {
    [self.rootViewController popToRootViewControllerAnimated:YES];
}

- (void)pushViewController:(UIViewController *)viewController {
    [self.rootViewController pushViewController:viewController animated:YES];
}

// for demo only
- (UINavigationController *)rootViewController {
    BHAppDelegate *bhAppDelegate = (BHAppDelegate *)[UIApplication sharedApplication].delegate;
    return (UINavigationController *)bhAppDelegate.window.rootViewController;
}

@end
