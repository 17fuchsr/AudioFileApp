//
//  Recording.h
//  AudioApp
//
//  Created by Rachael on 7/6/16.
//  Copyright © 2016 Rachael. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Recording : NSObject <NSSecureCoding>

@property (strong, nonatomic) NSDate* date;
//always save in ~/Documents/yyyyMMddhhmmss.caf
@property (readonly, nonatomic) NSString* path;
@property (readonly, nonatomic) NSURL* url;
@property (readonly, nonatomic) NSString* name;
-(Recording*) initWithDate:(NSDate*) aDate;


//save our recordings in same directory as our recording date time stuff

@end

/*Recording*r = [[Recording alloc] initWithDate:[NSDate today]];
NSString* p = r.path;
NSURL* u = r.url;*/