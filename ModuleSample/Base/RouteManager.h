//
//  RouteManager.h
//  ModuleSample
//
//  Created by LinXi on 28/02/2018.
//  Copyright © 2018 maitao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <MGJRouter/MGJRouter.h>

static NSString *const kRoutePageHome = @"ms://home";
static NSString *const kRoutePageB = @"ms://pageB";
static NSString *const kRoutePageB1 = @"ms://pageB1";

@interface RouteManager : NSObject

+ (instancetype)shareInstance;

- (void)popToRoot;
- (void)pushViewController:(UIViewController *)viewController;

@end
