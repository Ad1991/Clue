//
//  NSURLResponse+CLUNetworkAdditions.m
//  Clue
//
//  Created by Ahmed Sulaiman on 6/23/16.
//  Copyright © 2016 Ahmed Sulaiman. All rights reserved.
//

#import "NSURLResponse+CLUNetworkAdditions.h"

@implementation NSURLResponse (CLUNetworkAdditions)

- (NSDictionary *)clue_responseProperties {
    if (!self) {
        return nil;
    }
    NSMutableDictionary *responseProperties = [[NSMutableDictionary alloc] init];
    [responseProperties setObject:NSStringFromClass([self class]) forKey:@"class"];
    [responseProperties setObject:self.MIMEType ? self.MIMEType : @"" forKey:@"MIMEType"];
    [responseProperties setObject:self.URL.absoluteString ? self.URL.absoluteString : @"" forKey:@"URL"];
    [responseProperties setObject:@(self.expectedContentLength) forKey:@"expectedContentLength"];
    
    return responseProperties;
}

@end
