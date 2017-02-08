//
//  ViewController.m
//  timeLine
//
//  Created by 十六 on 16/11/16.
//  Copyright © 2016年 十六. All rights reserved.
//

#import "ViewController.h"
#import "ProgressView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ProgressView *pView = [[ProgressView alloc]init];
    pView.frame = CGRectMake(0, 100, 200, 20);
    pView.rowNum = 7;
    pView.cellHeight = 45;
    pView.highlightColor = [UIColor orangeColor];
    pView.defaultColor = [UIColor grayColor];
    NSArray *time = @[@"111",@"222",@"333",@"444",@"555",@"666",@"777"];
     NSArray *type = @[@"大师傅",@"爱的色放",@"adsf",@"agh",@"ert",@"ert",@"ert"];
    [pView headerWithType:1 andTime:time andTypeName:type];
    [self.view addSubview:pView];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
