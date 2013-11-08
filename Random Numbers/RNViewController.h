//
//  RNViewController.h
//  Random Numbers
//
//  Created by Sergey Dunets on 31.10.13.
//  Copyright (c) 2013 Zen Carrot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RNViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *fromValue;
@property (weak, nonatomic) IBOutlet UITextField *toValue;

- (IBAction)randomButtonPress:(id)sender;

@end
