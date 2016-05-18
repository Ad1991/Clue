//
//  CLURecordableModule.h
//  Clue
//
//  Created by Ahmed Sulaiman on 5/18/16.
//  Copyright © 2016 Ahmed Sulaiman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CLUWritable.h"

@protocol CLURecordableModule <NSObject>

@required
- (instancetype)initWithWriter:(id <CLUWritable>)writer;
- (void)startRecording;
- (void)stopRecording;
- (void)addNewFrameWithTimestamp:(CFTimeInterval)timestamp;

@end
