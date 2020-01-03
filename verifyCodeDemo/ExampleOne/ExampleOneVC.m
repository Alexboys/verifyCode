//
//  ExampleOneVC.m
//  verifyCodeDemo
//
//  Created by 咕咚咕咚 on 2020/1/3.
//  Copyright © 2020 醉醺醺的红毛衣. All rights reserved.
//

#import "ExampleOneVC.h"
#import "TFCodeViewExampleOne.h"

@interface ExampleOneVC ()<TFCodeViewExampleOneDelegat>

@property (nonatomic, weak) TFCodeViewExampleOne   *code1View;

@end

@implementation ExampleOneVC

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
    
    
    TFCodeViewExampleOne *code1View = [[TFCodeViewExampleOne alloc] initWithCount:6 margin:XWLayout(20)];
    code1View.backgroundColor = [UIColor yellowColor];
    code1View.frame = CGRectMake(x, y, w, h);
    code1View.delegate = self;
    [scrollView addSubview:code1View];
    self.code1View = code1View;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap)];
    [scrollView addGestureRecognizer:tap];
}

- (void)tap
{
    [self.code1View endEditing:YES];

}

// MARK:- ********************* TFCodeViewExampleOneDelegat *********************
- (void)finish
{
    NSLog(@"TODO......");
}
@end
