//
//  MenuViewController.m
//  KKUIKit
//
//  Created by hdk on 2014. 7. 15..
//  Copyright (c) 2014년 Kevin Kwon. All rights reserved.
//

#import "MenuViewController.h"
#import "UILabelViewController.h"

static NSString *const kNameKey = @"name";
static NSString *const kViewControllerKey = @"viewController";

@interface MenuViewController ()

@end

@implementation MenuViewController

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
    // Do any additional setup after loading the view.
    
    // 메뉴 추가
    _menu = [NSMutableArray array];
    [_menu addObject:[NSMutableDictionary dictionaryWithObject:@"UILabel" forKey:kNameKey]];
    
    // 다음 화면에서 이화면으로 돌아올때 backButton의 이름을 미리 설정한다.
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"UIKit" style:UIBarButtonItemStylePlain target:nil action:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

    // 메모리 워닝이 발생하면 저장한 viewController를 해제해준다.
    for (NSMutableDictionary *menuInfo in _menu) {
        [menuInfo removeObjectForKey:kViewControllerKey];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark - UITableView Data Source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _menu.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    NSDictionary *rowInfo = _menu[indexPath.row];
    cell.textLabel.text = rowInfo[kNameKey];
    
    return cell;
}

#pragma mark - UITableView Delegate Method
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44.0;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSMutableDictionary *rowInfo = _menu[indexPath.row];
    UIViewController *target = rowInfo[kViewControllerKey];
    
    if (target) {
        [self.navigationController pushViewController:target animated:YES];
        return;
    }

    if (indexPath.row == 0) {
        NSLog(@"타겟이 없음");
        target = [[UILabelViewController alloc]initWithNibName:@"UILabelViewController" bundle:nil];
        [rowInfo setObject:target forKey:kViewControllerKey];
    }
    [self.navigationController pushViewController:target animated:YES];
    return;
}


@end
