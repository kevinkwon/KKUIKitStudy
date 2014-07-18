//
//  UILabelViewController.h
//  KKUIKit
//
//  Created by hdk on 2014. 7. 16..
//  Copyright (c) 2014년 Kevin Kwon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabelViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (strong, nonatomic) UILabel *label2;
@property (weak, nonatomic) IBOutlet UITextView *textView1;
@property (strong, nonatomic) IBOutlet UITextView *textView2;

@end
