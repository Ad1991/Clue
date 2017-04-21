//
//  NSURLResponse+CLUNetworkAdditions.m
//  Clue
//
//  Created by Ahmed Sulaiman on 6/23/16.
//  Copyright © 2016 Ahmed Sulaiman. All rights reserved.
//

#import "NSURLResponse+CLUNetworkAdditions.h"
#import "NSMutableDictionary+CLUUtilsAdditions.h"

@implementation NSURLResponse (CLUNetworkAdditions)

- (NSDictionary *)clue_responseProperties {
    if (!self) {
        return nil;
    }
    NSMutableDictionary *responseProperties = [[NSMutableDictionary alloc] init];
    [responseProperties setObject:NSStringFromClass([self class]) forKey:@"class"];
    [responseProperties clue_setValidObject:self.MIMEType forKey:@"MIMEType"];
    [responseProperties clue_setValidObject:self.URL.absoluteString forKey:@"URL"];
    [responseProperties setObject:@(self.expectedContentLength) forKey:@"expectedContentLength"];
    
    return responseProperties;
}

@end
