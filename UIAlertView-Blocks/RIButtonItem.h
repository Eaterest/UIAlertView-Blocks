//
//  RIButtonItem.h
//  Shibui
//
//  Created by Jiva DeVoe on 1/12/11.
//  Copyright 2011 Random Ideas, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^RIAction)();

@interface RIButtonItem : NSObject

@property (copy, nonatomic) NSString *label;
@property (copy, nonatomic) RIAction action;

+ (instancetype)item;
+ (instancetype)itemWithLabel:(NSString *)inLabel;
+ (instancetype)itemWithLabel:(NSString *)inLabel action:(RIAction)action;

@end

