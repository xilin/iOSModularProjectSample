//
//  RouteManager+ModuleA.m
//  ModuleSample
//
//  Created by LinXi on 28/02/2018.
//  Copyright © 2018 maitao. All rights reserved.
//

#import "RouteManager+ModuleA.h"

@implementation RouteManager (ModuleA)

- (void)registerRouteForModuleA {
    [MGJRouter registerURLPattern:kRoutePageHome toHandler:^(NSDictionary *routerParameters) {
        [self popToRoot];
    }];
}

@end
