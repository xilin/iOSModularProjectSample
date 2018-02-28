//
//  AppDelegate.m
//  ModuleSample
//
//  Created by LinXi on 28/02/2018.
//  Copyright © 2018 maitao. All rights reserved.
//

#import "AppDelegate.h"
#import "BHServices.h"
#import "RouteManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self setupBeeHiveWithApplication:application launchOptions:launchOptions];

    [super application:application didFinishLaunchingWithOptions:launchOptions];

    [self setupMainWindow];

    return YES;
}

- (void)setupBeeHiveWithApplication:(UIApplication *)application launchOptions:(NSDictionary *)launchOptions {
    [BHContext shareInstance].application = application;
    [BHContext shareInstance].launchOptions = launchOptions;

    [BeeHive shareInstance].enableException = YES;
    [[BeeHive shareInstance] setContext:[BHContext shareInstance]];
}

- (void)setupMainWindow {
    id<AppUISkeletonServiceProtocol> skeletonService = [[BeeHive shareInstance] createService:@protocol(AppUISkeletonServiceProtocol)];
    UIViewController *mainViewController = [skeletonService mainViewController];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:(UIViewController *)mainViewController];
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = navigationController;

    [self.window makeKeyAndVisible];
}

- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation {
    [super application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
    [[RouteManager shareInstance] tryToOpenURL:url];
    return YES;
}

#if __IPHONE_OS_VERSION_MAX_ALLOWED > 80400
- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<NSString *,id> *)options {
    if (@available(iOS 9.0, *)) {
        [super application:app openURL:url options:options];
    }
    [[RouteManager shareInstance] tryToOpenURL:url];
    return YES;
}
#endif

@end
