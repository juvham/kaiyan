//
//  BaseClassViewController.m
//  开眼
//
//  Created by juvham on 16/1/21.
//  Copyright © 2016年 juvham. All rights reserved.
//

#import "BaseClassViewController.h"
#import "EveryDayTableViewController.h"

@interface BaseClassViewController ()

@end

@implementation BaseClassViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _everyDayVC = [[EveryDayTableViewController alloc]initWithStyle:(UITableViewStyleGrouped)];
    
    UINavigationController *naVC = [[UINavigationController alloc]initWithRootViewController:_everyDayVC];
    
    naVC.navigationBar.translucent = NO;
    
    [self addChildViewController:naVC];
    [self.view addSubview:naVC.view];
    
    
    // Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
