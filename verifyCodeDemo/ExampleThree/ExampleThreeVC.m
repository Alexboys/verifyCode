//
//  ExampleThreeVC.m
//  verifyCodeDemo
//
//  Created by 咕咚咕咚 on 2020/1/3.
//  Copyright © 2020 醉醺醺的红毛衣. All rights reserved.
//

#import "ExampleThreeVC.h"

#import "TFCodeViewExampleThree.h"

@interface ExampleThreeVC ()<TFCodeViewExampleThreeDelegat>

@property (nonatomic, weak) TFCodeViewExampleThree   *code3View;

@end

@implementation ExampleThreeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationItem.title = self.titileStr;
    
    
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.contentSize = CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT * 1.5);
    scrollView.layer.borderColor = [RandomColor CGColor];
    scrollView.layer.borderWidth = 0.5;
    scrollView.frame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    [self.view addSubview:scrollView];
    
    
    CGFloat x = XWLayout(60);
    CGFloat w = SCREEN_WIDTH - x * 2;
    CGFloat h = XWLayout(100);
    CGFloat y = XWLayout(200);
    
    
    TFCodeViewExampleThree *code3View = [[TFCodeViewExampleThree alloc] initWithCount:6 margin:XWLayout(20)];
    code3View.frame = CGRectMake(x, y, w, h);
    code3View.delegate = self;
    [scrollView addSubview:code3View];
    self.code3View = code3View;
    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
    [scrollView addGestureRecognizer:tap];
}

- (void)tap
{
    [self.code3View endEditing:YES];

}

// MARK:- ********************* TFCodeViewExampleOneDelegat *********************
- (void)finish
{
    NSLog(@"TODO......");
}

@end
