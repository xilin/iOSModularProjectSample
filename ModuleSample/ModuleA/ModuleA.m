//
//  ModuleA.m
//  ModuleSample
//
//  Created by LinXi on 28/02/2018.
//  Copyright © 2018 maitao. All rights reserved.
//

#import "ModuleA.h"
#import <BeeHive/BHModuleProtocol.h>

@interface ModuleA () <BHModuleProtocol>

@end

@implementation ModuleA

BH_EXPORT_MODULE(NO)

- (BOOL)singleton {
    return YES;
}

- (void)modInit:(BHContext *)context {
    switch (context.env) {
    case BHEnvironmentDev:
        //....初始化开发环境
        break;
    case BHEnvironmentProd:
        //....初始化生产环境
        break;
    default:
        break;
    }
}

- (void)modSetUp:(BHContext *)context {
    NSLog(@"ModuleA setup");
}

@end
