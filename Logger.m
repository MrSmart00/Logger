//
//  Logger.m
//
//  Created by 日野森寛也 inc, on 2014/07/31.
//  Copyright (c) 2014 Hiroya Hinomori. All rights reserved.
//
//  This software is released under the MIT License.
//  http://opensource.org/licenses/mit-license.php
//

#import "Logger.h"

@implementation Logger

+ (Logger*)sharedInstance {
    static Logger *sharedInstance = nil;
    static dispatch_once_t onceToken = 0;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[Logger alloc] init];
    });
    return sharedInstance;
}

- (void)print:(NSString *)message, ...
{
    if (self.enable) {
        va_list args;
        va_start(args, message);
        NSString* baseText = message;
        id value = va_arg(args, typeof(id));
        va_end(args);
        NSLog(baseText, value);
    }
}

@end
