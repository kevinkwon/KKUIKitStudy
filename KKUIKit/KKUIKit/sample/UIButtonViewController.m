//
//  UIButtonViewController.m
//  KKUIKit
//
//  Created by hdk on 2014. 7. 18..
//  Copyright (c) 2014년 Kevin Kwon. All rights reserved.
//

#import "UIButtonViewController.h"

@implementation UIButtonViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.title = @"UIButton";
    
    [self configureView];
}

- (void)configureView
{
    _textLabel.text = @"버튼을 눌러주세요.";
    
    if (_rightButton == nil) {
        _rightButton = [UIButton buttonWithType:UIButtonTypeSystem];
    }
    _rightButton.frame = CGRectMake(235, 74, 65, 30);
    [_rightButton setTitle:@"오른쪽버튼" forState:UIControlStateNormal];
    [_rightButton addTarget:self action:@selector(rightButtonPressed:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:_rightButton];
}


- (IBAction)leftButtonPressed:(id)sender {
    self.textLabel.text = @"왼쪽버튼이 눌렸습니다.";
}

- (void)rightButtonPressed:(id)sender {
    
    self.textLabel.text = @"오른쪽버튼이 눌렸습니다.";
}

@end
