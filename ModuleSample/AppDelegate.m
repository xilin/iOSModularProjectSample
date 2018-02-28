//
//  AppDelegate.m
//  ModuleSample
//
//  Created by LinXi on 28/02/2018.
//  Copyright © 2018 maitao. All rights reserved.
//

#import "AppDelegate.h"
#import "BHServices.h"

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

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
