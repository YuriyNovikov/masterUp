//
//  Vehile.h
//  HomeworkLesson2
//
//  Created by YURIY NOVIKOV on 27.10.13.
//  Copyright (c) 2013 YURIY NOVIKOV. All rights reserved.
//

#import "Transport.h"

@interface Vehile : Transport

@property (strong,nonatomic) NSNumber *price;

- (id)initWithName:(NSString *)name andPrice:(NSNumber *)price;

@end
