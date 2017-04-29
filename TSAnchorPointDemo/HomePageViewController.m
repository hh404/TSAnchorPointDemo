//
//  HomePageViewController.m
//  TSAnchorPointDemo
//
//  Created by huangjianwu on 2016/12/30.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "HomePageViewController.h"
#import "DrawRectViewController.h"
#import "ViewController.h"
#import "AnchorPointViewController.h"

@interface HomePageViewController ()

@end

@implementation HomePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(indexPath.row == 0)
    {
        cell.textLabel.text = @"坐标系测试";
    }
    else if(indexPath.row == 1)
    {
        cell.textLabel.text = @"archor point测试";
    }
    else
    {
        cell.textLabel.text = @"旋转测试";
    }
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
        DrawRectViewController *dc = [[DrawRectViewController alloc] init];
        [self.navigationController pushViewController:dc animated:YES];
    }
    else if(indexPath.row == 1)
    {
        ViewController *vc = [[ViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    }
    else
    {
        AnchorPointViewController *ac = [[AnchorPointViewController alloc] init];
        [self.navigationController pushViewController:ac animated:YES];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
