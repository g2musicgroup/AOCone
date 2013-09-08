//
//  AppDelegate.m
//  testApp
//
//  Created by Gawain Bracy II on 9/7/13.
//  Copyright (c) 2013 Gawain Bracy II. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Step 2
    NSLog(@"Step 2");
    float foodIsDelicious = 3.14159265359;
    NSLog(@"%d food is disguisting, but %.2f is delicious!", (int)foodIsDelicious,(float)foodIsDelicious);
    
    // Step 3
    NSLog(@"Step 3");
    int spoons = 2;
    bool change = NO;
    
    if ((spoons > 0)&&(change == YES))
    {
        NSLog(@"Please say your prayers before eating.");
    }
    else if ((spoons == foodIsDelicious) || (change == NO))
    {
        NSLog(@"we have no more spoons until the diswasher stops running");
    }
    
    // Step 4
    NSLog(@"Step 4");
    int livesLeft = 4;
    if (livesLeft == 4)
    {
        NSLog(@"In the Candy Crush game I have %d! lives left", livesLeft);
    }
    else if (livesLeft > 42)
    {
        NSLog(@"I need to practice this game more, I had %d lives now I'm dead", livesLeft);
    }
    else
    {
        int off = (livesLeft-42);
        NSLog(@"I died %d times too many", off);
    };
    
    // step 5
    NSLog(@"Step 5");
    for (int x=1;x < 5; x++)
    {
        NSLog(@"%d loops complete", x);
    };
    
    
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.viewController = [[[ViewController alloc] initWithNibName:@"ViewController" bundle:nil] autorelease];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
