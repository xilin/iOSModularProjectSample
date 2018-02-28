//
//  AppUISkeletonService.h
//  ModuleSample
//
//  Created by LinXi on 28/02/2018.
//  Copyright © 2018 maitao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppUISkeletonServiceProtocol.h"
#import <BeeHive/BeeHive.h>

@BeeHiveService(AppUISkeletonServiceProtocol, AppUISkeletonServiceImpl)
@interface AppUISkeletonServiceImpl : NSObject <AppUISkeletonServiceProtocol>

@end
