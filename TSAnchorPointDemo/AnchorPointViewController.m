//
//  AnchorPointViewController.m
//  TSAnchorPointDemo
//
//  Created by huangjianwu on 2017/1/3.
//  Copyright (c) 2017年 huangjianwu. All rights reserved.
//

#import "AnchorPointViewController.h"

@interface AnchorPointViewController ()
@property (nonatomic, strong) UILabel *defaultLabel;
@end

// Constants
// static NSString * const kSomeLocalConstant = @"SomeValue";

@implementation AnchorPointViewController

#pragma mark -
#pragma mark Static methods

#pragma mark -
#pragma mark Init and dealloc

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
    }
    return self;
}

- (void)dealloc {
}

#pragma mark -
#pragma mark Properties

#pragma mark -
#pragma mark Public methods

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *v = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 142, 142)];
    v.center = CGPointMake(150,230);
    v.backgroundColor = [UIColor blueColor];
    [self.view addSubview:v];
    
    _defaultLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 180, 100, 100)];
    _defaultLabel.text = @"Default";
    _defaultLabel.textAlignment = NSTextAlignmentCenter;
    UIColor *cl = [UIColor redColor];
    cl = [cl colorWithAlphaComponent:0.5];
    _defaultLabel.backgroundColor = cl;
    [self.view addSubview:_defaultLabel];
    
    
    UILabel *rotateLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 180, 100, 100)];
    rotateLabel.text = @"rotate";
    rotateLabel.textAlignment = NSTextAlignmentCenter;
    rotateLabel.layer.anchorPoint = CGPointMake(0, 0);
     rotateLabel.transform = CGAffineTransformMakeRotation(45 *M_PI / 180.0);
    cl = [UIColor greenColor];
    cl = [cl colorWithAlphaComponent:0.5];
    rotateLabel.backgroundColor = cl;
    [self.view addSubview:rotateLabel];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
    [rotateLabel addGestureRecognizer:tap];
}

- (void)tap
{
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (void)viewDidLayoutSubviews
{
    
}


#pragma mark -
#pragma mark Private methods

#pragma mark - 
#pragma mark Delegate methods

#pragma mark - 
#pragma mark Handlers

@end
