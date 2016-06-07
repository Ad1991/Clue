//
//  CLUUserInteractionModule.h
//  Clue
//
//  Created by Ahmed Sulaiman on 6/4/16.
//  Copyright © 2016 Ahmed Sulaiman. All rights reserved.
//

#import "CLUObserveModule.h"

@interface CLUUserInteractionModule : CLUObserveModule

- (void)addNewFrameWithTimestamp:(CFTimeInterval)timestamp;
- (void)startRecording;
- (void)stopRecording;

@end
