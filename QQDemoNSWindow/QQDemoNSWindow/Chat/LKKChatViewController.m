//
//  LKKChatViewController.m
//  QQ Demo
//
//  Created by Zin_戦 on 17/1/22.
//  Copyright © 2017年 Zin_戦. All rights reserved.
//

#import "LKKChatViewController.h"
#import "LKKLoginWindow.h"
#import "LKKLoginWindowController.h"
#import "AppDelegate.h"
@implementation LKKChatViewController


#pragma mark - 隐藏(不关闭App)
- (IBAction)hideWindow:(id)sender {
    [[NSApplication sharedApplication] hide:self];
}
#pragma mark - 最小化
- (IBAction)miniaturizeWindow:(id)sender {
    [self.view.window miniaturize:self];
}
#pragma mark - 最大化
- (IBAction)zoomWindow:(id)sender {
       [self.view.window zoom:self];
}

- (void)viewDidLoad{

    [super viewDidLoad];
    //创建按钮
    NSButton *pushButton = [[NSButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-44,self.view.frame.size.height/2 + 30, 88, 48)];
    [pushButton setTarget:self];
    [pushButton setAction:@selector(backAction:)];
    //按钮样式
    pushButton.bezelStyle = NSRoundedBezelStyle;
    //是否显示背景 默认YES
    pushButton.bordered = YES;
    //按钮的Type
    [pushButton setButtonType:NSButtonTypeMomentaryPushIn];
    //设置图片
//    pushButton.image = [NSImage imageNamed:@"close.png"];
    //按钮的标题
    [pushButton setTitle:@"返回上页"];
    //是否隐藏
    pushButton.hidden = NO;
    //设置按钮的tag
    pushButton.tag = 100;
    //标题居中显示
    pushButton.alignment = NSTextAlignmentCenter;
    //设置背景是否透明
    pushButton.transparent = NO;
    //按钮初始状态
    pushButton.state = NSOffState;
    //按钮是否高亮
    pushButton.highlighted = NO;
    //把当前按钮添加到视图上
    [self.view addSubview:pushButton];
}

- (void)backAction:(id)sender{

    // 1.创建聊天界面窗口控制器
    LKKLoginWindowController *chatWinControl = [LKKLoginWindowController windowController];
    
    // 2.强引用这个Window，不然这个Window会在跳转之后的瞬间被销毁
    AppDelegate *appDelegate = (AppDelegate *)[NSApplication sharedApplication].delegate;
    appDelegate.mainWindowController = chatWinControl;
    
    // 3.设为KeyWindow并前置
    [chatWinControl.window makeKeyAndOrderFront:self];
    
    // 4.关闭现在的登录窗口
    [self.view.window orderOut:self];

}
@end
