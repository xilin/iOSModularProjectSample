//
//  ModuleBViewController.m
//  ModuleSample
//
//  Created by LinXi on 28/02/2018.
//  Copyright © 2018 maitao. All rights reserved.
//

#import "PageBViewController.h"
#import "BHServices.h"
#import "RouteManager+ModuleB.h"

@interface PageBViewController ()

@end

@implementation PageBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"PageB";
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    id<ModuleAServiceProtocol> moduleAService = [[BeeHive shareInstance] createService:@protocol(ModuleAServiceProtocol)];
    NSLog(@"%ld", [moduleAService sampleServiceLikeQuery:@"sample"]);
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(20, 220, 100, 60);
    [button setTitle:@"Open B1" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)clickButton {
    [[RouteManager shareInstance] goPageB1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
