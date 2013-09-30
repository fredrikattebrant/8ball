//
//  _BallViewController.m
//  8Ball
//
//  Created by Fredrik Attebrant on 30/9-2013.
//  Copyright (c) 2013 Fredrik Attebrant. All rights reserved.
//

#import "_BallViewController.h"
#import "DecisionMaker.h"

@interface _BallViewController ()

@end

@implementation _BallViewController {
    DecisionMaker *answerSource;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Initialize the UI
    self.answerLabel.text = @"Need an answer? Hit the button";
    self.answerLabel.textAlignment = NSTextAlignmentCenter;
    
    [self.answerButton setTitle:@"Get an answer" forState:UIControlStateNormal];
    [self.answerButton setTitle:@"Thinking..." forState:UIControlStateHighlighted];
    
    // Initialize the decision maker
    answerSource = [[DecisionMaker alloc] init];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)answerButtonPressed:(UIButton *)sender {
    self.answerLabel.text = [answerSource getRandomAnswer];
}
@end
