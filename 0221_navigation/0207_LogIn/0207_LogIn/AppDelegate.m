//
//  AppDelegate.m
//  0207_LogIn
//
//  Created by Hanson Jung on 2017. 2. 7..
//  Copyright © 2017년 Hanson Jung. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
   /*
    // 1.윈도우만들기
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 2.RootViewController 만들기
    UIStoryboard *mainStoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *rootVC = [mainStoryboard instantiateViewControllerWithIdentifier:@"ViewController"];
    
    // 3.네비게이션 컨트롤러 만들기
     UINavigationController *naviVC = [[UINavigationController alloc] initWithRootViewController:rootVC];
    // 4.윈도우에 루트뷰(네비게이션뷰) 지정
    //self.window.rootViewController = naviVC;
    
    
    
    //Tab bar만들기
    UITabBarController *tabbar = [[UITabBarController alloc] init];
    //1.윈도우 만들기
    //2. tabbarviewController만들기
    ViewController *vc1 = [[ViewController alloc] init];
    ViewController *vc2 = [[ViewController alloc] init];
    
    
    tabbar.viewControllers = @[naviVC, vc2];
    
    //3.탭바 아이콘 설정
    UITabBarItem *item1 = [[UITabBarItem alloc] initWithTitle:nil image:[UIImage imageNamed:@"h1"] selectedImage:[UIImage imageNamed:@"h2.png"]];
    
    UITabBarItem *item2 = [[UITabBarItem alloc] initWithTitle:@"TAB BAR" image:[UIImage imageNamed:@"h1"] selectedImage:[UIImage imageNamed:@"h2.png"]];
    
    naviVC.tabBarItem = item1;
    vc2.tabBarItem = item2;
    
    //4.윈도우에 RootViewController 지정
    self.window.rootViewController = tabbar;
    
    [self.window makeKeyAndVisible]; // 꼭써주기!!
    */
    
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
