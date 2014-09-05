//
//  Logger.h
//
//  Created by 日野森寛也 inc, on 2014/07/31.
//  Copyright (c) 2014 Hiroya Hinomori. All rights reserved.
//
//  This software is released under the MIT License.
//  http://opensource.org/licenses/mit-license.php
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject
@property (nonatomic) BOOL enable;
+ (Logger*)sharedInstance;
- (void)print:(NSString *)message, ...;
@end
