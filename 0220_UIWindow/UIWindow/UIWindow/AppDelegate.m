//
//  AppDelegate.m
//  UIWindow
//
//  Created by Hanson Jung on 2017. 2. 20..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // 1.윈도우 만들기
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 2.RootViewController 만들기
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //main.storyboard 로 불러오는 과정을 직접 만든것. (옵션에서 main 지우고)
    //self.storyboard로 만들면 안된다. 스토리보드 없다.
    // BUT!!, main.storyboard 파일을 수동으로 지정하는 것이기 때문에 스토리보드 안에 들어가서 storyboard id (ViewController)를 적어줘야 찾아간다.
    
    
    ViewController *rootVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"ViewController"];
    //스토리보드 중에서 내가 지정한 뷰컨트롤러를 불러와라.
    //[mainStoryboard instantiateInitialViewController]; 시작점 있을때
    // 스토리보드에 있는 뷰컨트롤러 마저도 만들고 싶다면
    //UIViewController *rooVC = [[UIViewController alloc] init];

    
    // 네비게이션 콘트롤러 만들기
    UINavigationController *naviVC = [[UINavigationController alloc] initWithRootViewController:rootVC];
    
    
    // 3.윈도우에 RootViewController 지정
    self.window.rootViewController = naviVC; // 얘 중요해!!!
    [self.window makeKeyAndVisible]; // 얘는 애플에서 하래. 내부적으로 어떻게 돌아가나봐
    
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
