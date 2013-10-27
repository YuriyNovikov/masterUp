//
//  Vehile.m
//  HomeworkLesson2
//
//  Created by YURIY NOVIKOV on 27.10.13.
//  Copyright (c) 2013 YURIY NOVIKOV. All rights reserved.
//

#import "Vehile.h"

@implementation Vehile

- (id)init {
    return [self initWithName:@"Name" andPrice:[NSNumber numberWithFloat:0.0]];
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
