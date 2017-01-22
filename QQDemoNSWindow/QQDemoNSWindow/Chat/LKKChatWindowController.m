//
//  LKKChatWindowController.m
//  QQ Demo
//
//  Created by Zin_戦 on 17/1/22.
//  Copyright © 2017年 Zin_戦. All rights reserved.
//

#import "LKKChatWindowController.h"

static NSString *const kStoryboardName  = @"Main";
static NSString *const kChatWindowControllerIdentifier = @"LKKChatWindowController";

@implementation LKKChatWindowController

+ (instancetype)windowController{
    
    NSStoryboard *storyboard = [NSStoryboard storyboardWithName:kStoryboardName
                                                         bundle:[NSBundle mainBundle]];
    
    LKKChatWindowController *cc = [storyboard instantiateControllerWithIdentifier:kChatWindowControllerIdentifier];
    [cc.window setAnimationBehavior:NSWindowAnimationBehaviorDocumentWindow];
    [cc.window makeFirstResponder:nil];
    return cc;
}


- (void)windowDidLoad {
    [super windowDidLoad];
    
    // 居中
    [self.window center];
}

@end
