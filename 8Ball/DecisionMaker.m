//
//  DecisionMaker.m
//  8Ball
//
//  Created by Fredrik Attebrant on 30/9-2013.
//  Copyright (c) 2013 Fredrik Attebrant. All rights reserved.
//

#import "DecisionMaker.h"

@implementation DecisionMaker {
    NSArray *answers;
}

- (id)init
{
    self = [super init];
    answers = @[
                @"Yes.",
                @"No.",
                @"Sure, why not?",
                @"42",
                @"Tomorrow is another day",
                @"Sleep is the answer"
                ];
    return self;
}

- (NSString *)getRandomAnswer
{
    return answers[arc4random() % answers.count];
}

@end
