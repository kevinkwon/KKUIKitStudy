//
//  UIButtonViewController.h
//  KKUIKit
//
//  Created by hdk on 2014. 7. 18..
//  Copyright (c) 2014년 Kevin Kwon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButtonViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@property (weak, nonatomic) IBOutlet UIButton *leftButton;

@property (weak, nonatomic) UIButton *rightButton;

- (IBAction)leftButtonPressed:(id)sender;

@end
