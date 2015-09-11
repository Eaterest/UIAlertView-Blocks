//
//  RIButtonItem.m
//  Shibui
//
//  Created by Jiva DeVoe on 1/12/11.
//  Copyright 2011 Random Ideas, LLC. All rights reserved.
//

#import "RIButtonItem.h"

@implementation RIButtonItem

+ (instancetype)item
{
    return [self new];
}

+ (instancetype)itemWithLabel:(NSString *)inLabel
{
    RIButtonItem *newItem = [self item];
    newItem.label = inLabel;
    return newItem;
}

+ (instancetype)itemWithLabel:(NSString *)inLabel action:(RIAction)action
{
    RIButtonItem *newItem = [self itemWithLabel:inLabel];
    newItem.action = action;
    return newItem;
}

@end

