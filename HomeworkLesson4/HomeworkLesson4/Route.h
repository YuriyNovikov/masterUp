//
//  Route.h
//  HomeworkLesson3
//
//  Created by YURIY NOVIKOV on 31.10.13.
//  Copyright (c) 2013 YURIY NOVIKOV. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Route : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSNumber *price;

- (id)initWithName:(NSString *)name andPrice:(NSNumber *)price;

@end
