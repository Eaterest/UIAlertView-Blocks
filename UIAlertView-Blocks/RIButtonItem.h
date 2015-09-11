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

@property (retain, nonatomic) NSString *label;
@property (copy, nonatomic) RIAction action;

+ (id)item;
+ (id)itemWithLabel:(NSString *)inLabel;
+ (id)itemWithLabel:(NSString *)inLabel action:(RIAction)action;

@end

