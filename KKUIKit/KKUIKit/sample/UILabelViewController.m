//
//  UILabelViewController.m
//  KKUIKit
//
//  Created by hdk on 2014. 7. 16..
//  Copyright (c) 2014년 Kevin Kwon. All rights reserved.
//

#import "UILabelViewController.h"

@interface UILabelViewController ()

@end

@implementation UILabelViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"UILabel";

    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configureView
{
    if (_label2 == nil) {
        _label2 = [[UILabel alloc]initWithFrame:CGRectMake(160, 82, 110, 40)];
    }
    _label2.backgroundColor = [UIColor colorWithRed:40.0/255.0 green:80.0/255.0 blue:0.0/255.0 alpha:1.0]; // RGB값은 255로 나누어 넣는다.
    _label2.backgroundColor = [UIColor blueColor]; // 미리 지정된 컬러를 이용할 수 있다.
    _label2.text = @"Clien.net";
    _label2.textColor = [UIColor whiteColor];
    _label2.textAlignment = NSTextAlignmentCenter;
    _label2.font = [UIFont systemFontOfSize:19];

    [self.view addSubview:self.label2];
    
    if (_textView2 == nil) {
        _textView2 = [[UITextView alloc]initWithFrame:CGRectMake(20, 200 + 8, 280, 80)];
    }
    _textView2.font = [UIFont systemFontOfSize:12];
    _textView2.backgroundColor = [UIColor lightGrayColor];
    _textView2.text = @"넣고싶은 내용을 마음대로 씁니다.";
    [self.view addSubview:_textView2];

}

- (IBAction)doneButtonPressed:(id)sender {
    if ([self.textView1 isFirstResponder]) {
        [self.textView1 resignFirstResponder];
    }
    else {
        [self.textView2 resignFirstResponder];
    }
    
}

@end
