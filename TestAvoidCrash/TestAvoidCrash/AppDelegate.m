//
//  AppDelegate.m
//  TestAvoidCrash
//
//  Created by 仲召俊 on 2017/4/9.
//  Copyright © 2017年 ZZJ. All rights reserved.
//

#import "AppDelegate.h"
#import "AvoidCrash.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [AvoidCrash becomeEffective];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(dealWithCrashMessage:) name:AvoidCrashNotification object:nil];
    
    return YES;
}

- (void)dealWithCrashMessage:(NSNotification *)noti {
    
    //所有的信息都在userInfo中
    //可以在这里收集相应的崩溃信息做相应的处理（比如可以上传错误崩溃信息上传服务器）
    NSLog(@"%@",noti.userInfo);
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
