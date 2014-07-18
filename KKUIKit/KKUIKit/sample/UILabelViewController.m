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
    if (_label2 != nil) {
        self.label2 = [[UILabel alloc]initWithFrame:CGRectMake(38, 200, 200, 90)];
        self.label2.center = self.view.center;
        self.label2.backgroundColor = [UIColor colorWithRed:40.0/255.0 green:80.0/255.0 blue:0.0/255.0 alpha:1.0]; // RGB값은 255로 나누어 넣는다.
        self.label2.backgroundColor = [UIColor blueColor]; // 미리 지정된 컬러를 이용할 수 있다.
        self.label2.text = @"Clien.net";
        self.label2.textAlignment = NSTextAlignmentCenter;
        self.label2.font = [UIFont systemFontOfSize:19];
    }
    [self.view addSubview:self.label2];
}

@end
