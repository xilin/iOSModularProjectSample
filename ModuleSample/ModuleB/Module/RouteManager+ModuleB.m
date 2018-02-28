//
//  RouteManager+ModuleB.m
//  ModuleSample
//
//  Created by LinXi on 28/02/2018.
//  Copyright © 2018 maitao. All rights reserved.
//

#import "RouteManager+ModuleB.h"
#import "PageBViewController.h"
#import "PageB1ViewController.h"

@implementation RouteManager (ModuleB)

- (void)registerRouteForModuleB {
    [MGJRouter registerURLPattern:kRoutePageB
                        toHandler:^(NSDictionary *routerParameters) {
                          [self goPageB];
                        }];
}

- (void)goPageB {
    [self pushViewController:[PageBViewController new]];
}

- (void)goPageB1 {
    [self pushViewController:[PageB1ViewController new]];
}

@end
