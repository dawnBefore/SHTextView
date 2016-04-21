//
//  ViewController.m
//  SHTextView
//
//  Created by 宋浩文的pro on 16/4/12.
//  Copyright © 2016年 宋浩文的pro. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
    
    if (indexPath.row == 0) {
        cell.textLabel.text = @"向上伸缩";
    } else {
        cell.textLabel.text = @"向下伸缩";
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        OneViewController *oneVC = [[OneViewController alloc] init];
        [self.navigationController pushViewController:oneVC animated:YES];
    } else {
        TwoViewController *twoVC = [[TwoViewController alloc] init];
        [self.navigationController pushViewController:twoVC animated:YES];
    }
    
}


@end
