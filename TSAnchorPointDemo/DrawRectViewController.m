//
//  DrawRectViewController.m
//  TSAnchorPointDemo
//
//  Created by huangjianwu on 2016/12/30.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "DrawRectViewController.h"
#import "CustomDrawView.h"

@interface DrawRectViewController ()

@end

@implementation DrawRectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    CustomDrawView *cv = [[CustomDrawView alloc] initWithFrame:CGRectMake(40, 100, 260, 194)];
    cv.backgroundColor = [UIColor redColor];
    [self.view addSubview:cv];
    
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(40, 380, 260, 194)];
    imgView.image = [UIImage imageNamed:@"loading"];
    [self.view addSubview:imgView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
