//
//  Route.m
//  HomeworkLesson3
//
//  Created by YURIY NOVIKOV on 31.10.13.
//  Copyright (c) 2013 YURIY NOVIKOV. All rights reserved.
//

#import "Route.h"

@implementation Route

- (id)init {
    return [self initWithName:@"" andPrice:[NSNumber numberWithFloat:0.0]];
}

- (id)initWithName:(NSString *)name andPrice:(NSNumber *)price {
    self = [super init];
    if (self != nil) {
        self.name = name;
        self.price = price;
    }
    return self;
}

@end
