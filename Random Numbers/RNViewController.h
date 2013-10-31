//
//  RNViewController.h
//  Random Numbers
//
//  Created by Sergey Dunets on 31.10.13.
//  Copyright (c) 2013 Zen Carrot. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RNViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label;

- (IBAction)randomButtonPress:(id)sender;

@end
