//
//  HomeViewController.m
//  ModuleSample
//
//  Created by LinXi on 28/02/2018.
//  Copyright © 2018 maitao. All rights reserved.
//

#import "HomeViewController.h"
#import "RouteManager.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"ModuleA";
    self.view.backgroundColor = [UIColor grayColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(20, 220, 100, 60);
    [button setTitle:@"Open B" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(clickButton) forControlEvents:UIControlEventTouchUpInside];
}

- (void)clickButton {
    [MGJRouter openURL:kRoutePageB];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
