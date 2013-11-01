//
//  RNViewController.m
//  Random Numbers
//
//  Created by Sergey Dunets on 31.10.13.
//  Copyright (c) 2013 Zen Carrot. All rights reserved.
//

#import "RNViewController.h"
#import "RandomSequence.h"

@interface RNViewController ()

@property (nonatomic, strong) RandomSequence *randomSequence;
- (void)nextRandom;

@end

@implementation RNViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.randomSequence = [RandomSequence defaultSequence];
    [self nextRandom];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)randomButtonPress:(id)sender
{
    [self nextRandom];
}

- (void)nextRandom
{
    // Generate numbers in the range of [1 100]
    self.label.text = [NSString stringWithFormat:@"%lu", (unsigned long)[self.randomSequence nextIntegerInRange:NSMakeRange(1, 101)]];
}

@end
