//
//  RouteManager+ModuleB.m
//  ModuleSample
//
//  Created by LinXi on 28/02/2018.
//  Copyright © 2018 maitao. All rights reserved.
//

#import "RouteManager+ModuleB.h"
#import "ModuleBViewController.h"

@implementation RouteManager (ModuleB)

- (void)registerRouteForModuleB {
    [MGJRouter registerURLPattern:kRoutePageB toHandler:^(NSDictionary *routerParameters) {
        [self pushViewController:[ModuleBViewController new]];
    }];
}

@end
