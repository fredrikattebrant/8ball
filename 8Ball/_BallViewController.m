//
//  _BallViewController.m
//  8Ball
//
//  Created by Fredrik Attebrant on 30/9-2013.
//  Copyright (c) 2013 Fredrik Attebrant. All rights reserved.
//

#import "_BallViewController.h"

@interface _BallViewController ()

@end

@implementation _BallViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.answerLabel.text = @"Need an answer? Hit the button";
    self.answerLabel.textAlignment = NSTextAlignmentCenter;
    
    [self.answerButton setTitle:@"Get an answer" forState:UIControlStateNormal];
    [self.answerButton setTitle:@"Thinking..." forState:UIControlStateHighlighted];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)answerButtonPressed:(UIButton *)sender {
    self.answerLabel.text = @"You pressed the button!";
}
@end
