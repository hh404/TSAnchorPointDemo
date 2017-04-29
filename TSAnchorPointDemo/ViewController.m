//
//  ViewController.m
//  TSAnchorPointDemo
//
//  Created by huangjianwu on 2016/12/30.
//  Copyright © 2016年 huangjianwu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *nomalLabel;
@property (nonatomic, strong) UILabel *leftTopLabel;
@property (nonatomic, strong) UILabel *leftBottomLabel;
@property (nonatomic, strong) UILabel *rightToplLabel;
@property (nonatomic, strong) UILabel *rightBottomLabel;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    //不要被初始化的frame迷惑，改变了，archorpoint之后frame已经改变，frame是算出来的
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 64, 320, 35)];
    label.text = @"Position(150,250),Size(100,100)";
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    _nomalLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    _nomalLabel.backgroundColor =  [UIColor yellowColor];
    _nomalLabel.textAlignment = NSTextAlignmentCenter;
    _nomalLabel.text = @"Center";
    [self.view addSubview:_nomalLabel];
    
    _leftTopLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    _leftTopLabel.layer.anchorPoint = CGPointMake(0, 0);
    UIColor *color1 = [UIColor redColor];
    color1 = [color1 colorWithAlphaComponent:0.3];
    _leftTopLabel.backgroundColor =  color1;
    _leftTopLabel.textAlignment = NSTextAlignmentCenter;
    _leftTopLabel.text = @"LeftTop";
    [self.view addSubview:_leftTopLabel];
    
    
    _leftBottomLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    color1 = [UIColor greenColor];
    _leftBottomLabel.layer.anchorPoint = CGPointMake(0, 1);
    color1 = [color1 colorWithAlphaComponent:0.3];
    _leftBottomLabel.backgroundColor =  color1;
    _leftBottomLabel.textAlignment = NSTextAlignmentCenter;
    _leftBottomLabel.text = @"LeftBottom";
    [self.view addSubview:_leftBottomLabel];
    
    _rightToplLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    color1 = [UIColor blueColor];
    _rightToplLabel.layer.anchorPoint = CGPointMake(1, 0);
    color1 = [color1 colorWithAlphaComponent:0.3];
    _rightToplLabel.backgroundColor =  color1;
    _rightToplLabel.textAlignment = NSTextAlignmentCenter;
    _rightToplLabel.text = @"RightTop";
    [self.view addSubview:_rightToplLabel];
    
    _rightBottomLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    color1 = [UIColor magentaColor];
    _rightBottomLabel.layer.anchorPoint = CGPointMake(1, 1);
    color1 = [color1 colorWithAlphaComponent:0.3];
    _rightBottomLabel.backgroundColor =  color1;
    _rightBottomLabel.textAlignment = NSTextAlignmentCenter;
    _rightBottomLabel.text = @"RightBottom";
    [self.view addSubview:_rightBottomLabel];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
