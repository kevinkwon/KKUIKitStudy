//
//  MenuViewController.h
//  KKUIKit
//
//  Created by hdk on 2014. 7. 15..
//  Copyright (c) 2014년 Kevin Kwon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MenuViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (strong, nonatomic) NSMutableArray *menu;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
