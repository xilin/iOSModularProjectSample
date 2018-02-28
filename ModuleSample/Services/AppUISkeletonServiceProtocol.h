//
//  AppUISkeletonServiceProtocol.h
//  ModuleSample
//
//  Created by LinXi on 28/02/2018.
//  Copyright © 2018 maitao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BeeHive/BHServiceProtocol.h>

@protocol AppUISkeletonServiceProtocol <BHServiceProtocol>

- (UIViewController *)mainViewController;

@end
