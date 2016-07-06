//
//  Recording.m
//  AudioApp
//
//  Created by Rachael on 7/6/16.
//  Copyright © 2016 Rachael. All rights reserved.
//

#import "Recording.h"

@implementation Recording
@synthesize date;

-(Recording*) initWithDate:(NSDate*) aDate
{
    //initialize parent
    self = [super init];
    if (self){
        self.date = aDate;
    }
    return self;
}
//this is defining ^^^
-(NSString*) path
{
    NSString* home = NSHomeDirectory();
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"yyyyMMddHHmmss"];
    NSString* dateString = [formatter stringFromDate:self.date];
    return [NSString stringWithFormat:@"%@/Documents/%@.caf", home, dateString];
}


-(NSURL*) url
{
    //NSURL *URL = [NSURL fileURLWithString:@"file:///path/to/user/"];
    return [NSURL URLWithString:@"%@/Documents/%@.caf"];
    //NSURL *baseURL = [NSURL fileURLWithString:@"file:///path/to/user/"];
    //NSURL *URL = [NSURL URLWithString:@"folder/file.html" relativeToURL:baseURL];

}

@end
