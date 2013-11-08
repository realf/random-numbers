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

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        _randomSequence = [RandomSequence defaultSequence];
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self nextRandom];
    self.fromValue.delegate = self;
    self.toValue.delegate = self;
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

- (BOOL)validateValuesFrom:(NSInteger)aFrom to:(NSInteger)aTo
{
    BOOL result = YES;
    if (aFrom < 0 || aTo < 0 || aFrom > aTo)
    {
        result = NO;
    }
    
    return result;
}

- (void)nextRandom
{
    NSInteger from = self.fromValue.text.integerValue;
    NSInteger to = self.toValue.text.integerValue;
    
    if (![self validateValuesFrom:from to:to])
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Wrong values" message:@"Values should be positive, From should not be greater than To" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        return;
    }
    
    // Generate numbers in the range of [from to]
    self.label.text = [NSString stringWithFormat:@"%lu", (unsigned long)[self.randomSequence nextIntegerInRange:NSMakeRange(from, to)]];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if (textField == self.fromValue || textField == self.toValue)
    {
        return [textField resignFirstResponder];
    }
    
    return NO;
}

@end
