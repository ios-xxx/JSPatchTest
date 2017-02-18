//
//  AppDelegate.m
//  JSPatchTest
//
//  Created by hong chen on 2017/2/16.
//  Copyright © 2017年 hong chen. All rights reserved.
//

#import "AppDelegate.h"
#import "CSYViewController.h"
#import <UserNotifications/UserNotifications.h>
#import <JSPatch/JPEngine.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    /*
    [JPEngine startEngine];
    NSString * patch = [[NSBundle mainBundle]pathForResource:@"test" ofType:@"js"];
    NSString * script = [NSString stringWithContentsOfFile:patch encoding:NSUTF8StringEncoding error:nil];
    [JPEngine evaluateScript:script];
     */
    [JPEngine startEngine];
    NSData * data = [NSURLConnection sendSynchronousRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://127.0.0.1/js/test.js"]] returningResponse:0 error:nil];
    
    NSString * script = [[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
    
   [JPEngine evaluateScript:script];
    
    
    // Override point for customization after application launch.
    return YES;
}

+ (BOOL)allowsAnyHTTPSCertificateForHost:(NSString *)host
{
    return YES;
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

