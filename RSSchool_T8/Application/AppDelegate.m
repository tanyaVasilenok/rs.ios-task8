//
//  AppDelegate.m
//  RSSchool_T8
//
//  Created by Таня Василёнок on 16.07.21.
//

#import "AppDelegate.h"
#import "ArtistViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    ArtistViewController *rootVC = [ArtistViewController new];
    [window setRootViewController:rootVC];
//
//    self.window = window;
//    [self.window makeKeyAndVisible];
    
    return YES;
}


@end
