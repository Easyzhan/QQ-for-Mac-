//
//  AppDelegate.m
//  QQDemoNSWindow
//
//  Created by Zin_戦 on 17/1/22.
//  Copyright © 2017年 Zin_戦. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}
- (IBAction)newApplication:(NSMenuItem *)sender {
    NSString *executablePath = [[NSBundle mainBundle] executablePath];
    NSTask *task    = [[NSTask alloc] init];
    task.launchPath = executablePath;
    [task launch];
}

@end
