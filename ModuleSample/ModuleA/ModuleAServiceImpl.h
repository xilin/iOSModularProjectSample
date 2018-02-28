//
//  ModuleAService.h
//  ModuleSample
//
//  Created by LinXi on 28/02/2018.
//  Copyright © 2018 maitao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BeeHive/BeeHive.h>
#import "ModuleAServiceProtocol.h"

@BeeHiveService(ModuleAServiceProtocol, ModuleAServiceImpl)
@interface ModuleAServiceImpl : NSObject <ModuleAServiceProtocol>

@end
