//
//  ViewController.m
//  UIAlertView-BlocksDemo
//
//  Created by Weever on 15/9/11.
//  Copyright (c) 2015年 Kinth. All rights reserved.
//

#import "ViewController.h"
#import "UIAlertView+Blocks.h"
#import "UIActionSheet+Blocks.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}
- (IBAction)action:(id)sender {
    
    //[self testActionSheet];
    [self testAlert];
}

- (void)testAlert
{
    RIButtonItem *cancelItem = [RIButtonItem itemWithLabel:@"取消"];
    RIButtonItem *OKItem = [RIButtonItem itemWithLabel:@"确定" action:^(UIAlertView *sender) {
        NSLog(@"确定");
    }];
//    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Test" message:@"" cancelButtonItem:cancelItem otherButtonItems:OKItem, nil];
//    [alertView addButtonItem:OKItem];
//    [alertView show];
    
    
    NSArray *items = @[ cancelItem, OKItem, OKItem ];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"哈哈" message:@"嘻嘻" cancelButtonItem:nil otherButtonItems:nil];
    for (RIButtonItem *item in items) {
        [alert addButtonItem:item];
    }
    [alert show];
}

- (void)testActionSheet
{
    /*RIButtonItem *cancelItem = [RIButtonItem itemWithLabel:@"取消"];
     RIButtonItem *OKItem = [RIButtonItem itemWithLabel:@"确定" action:^(id sender) {
     DLog(@"确定");
     }];
     RIButtonItem *deleteItem = [RIButtonItem itemWithLabel:@"删除" action:^(id sender) {
     DLog(@"删除");
     }];
     UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil cancelButtonItem:cancelItem destructiveButtonItem:deleteItem otherButtonItems:OKItem, nil];
     [actionSheet showInView:self.view];
     actionSheet.dismissalAction = ^(id sender) {
     DLog(@"dismissal");
     };*/
    
    NSArray *names = @[ @"客服1", @"客服2", @"客服3", @"客服4" ];
    
    UIActionSheet *sheet = [[UIActionSheet alloc] init];
    for (NSString *name in names) {
        RIButtonItem *item = [RIButtonItem itemWithLabel:name action:^(id sender) {
            NSLog(@"name %@", name);
        }];
        [sheet addButtonItem:item];
    }
    //    sheet.destructiveButtonIndex = names.count-2;
    //    sheet.cancelButtonIndex = names.count-1;
    
    //    sheet.cancelButtonIndex = [sheet addButtonWithTitle:@"取消"];
    //    sheet.destructiveButtonIndex = [sheet addButtonWithTitle:@"删除"];
    
    [sheet addCancelButtonItem:[RIButtonItem itemWithLabel:@"取消" action:^(id sender) {
        NSLog(@"cancel");
    }]];
    [sheet addDestructiveButtonItem:[RIButtonItem itemWithLabel:@"删除" action:^(id sender) {
        NSLog(@"delete");
    }]];
    
    
    [sheet showInView:self.view];
    sheet.dismissalAction = ^(id sender) {
        NSLog(@"dismissal");
    };
}


@end
