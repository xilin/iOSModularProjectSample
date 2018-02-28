//
//  ModuleB.m
//  ModuleSample
//
//  Created by LinXi on 28/02/2018.
//  Copyright © 2018 maitao. All rights reserved.
//

#import "ModuleB.h"
#import <BeeHive/BHModuleProtocol.h>

@interface ModuleB() <BHModuleProtocol>

@end

@implementation ModuleB

BH_EXPORT_MODULE(NO)

- (void)basicModuleLevel {
    // do nothing
}

- (void)modSetUp:(BHContext *)context {
    NSLog(@"ModuleB setup");
}

@end
