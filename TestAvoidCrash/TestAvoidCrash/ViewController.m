//
//  ViewController.m
//  TestAvoidCrash
//
//  Created by 仲召俊 on 2017/4/9.
//  Copyright © 2017年 ZZJ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self testNSArrayAvoidCrash];
}

- (void)testNSArrayAvoidCrash {
    
    NSString *nilStr = nil;
    
    NSArray *array = @[@"1",nilStr];
    NSLog(@"%@",array);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
