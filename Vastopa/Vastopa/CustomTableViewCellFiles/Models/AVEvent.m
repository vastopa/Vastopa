//
//  AVEvent.m
//  Vastopa
//
//  Created by Adam Vastopa on 2016-11-19.
//  Copyright © 2016 wwfe. All rights reserved.
//

#import "AVEvent.h"

@implementation AVEvent

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dictionary];
    }
    return self;
}

@end
