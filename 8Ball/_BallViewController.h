//
//  _BallViewController.h
//  8Ball
//
//  Created by Fredrik Attebrant on 30/9-2013.
//  Copyright (c) 2013 Fredrik Attebrant. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface _BallViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UIButton *answerButton;

- (IBAction)answerButtonPressed:(UIButton *)sender;

@end
