//
//  AVEvent.h
//  Vastopa
//
//  Created by Adam Vastopa on 2016-11-19.
//  Copyright © 2016 wwfe. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AVEvent : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *when;
@property (nonatomic, strong) NSString *time;
@property (nonatomic, strong) NSString *where;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *country;
@property (nonatomic, strong) NSString *postal;

@end
