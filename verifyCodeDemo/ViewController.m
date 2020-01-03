//
//  ViewController.m
//  verifyCodeDemo
//
//  Created by 咕咚咕咚 on 2020/1/3.
//  Copyright © 2020 醉醺醺的红毛衣. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
#import "ExampleOneVC.h"
#import "ExampleTwoVC.h"
#import "ExampleThreeVC.h"
#import "ExampleFourVC.h"

static NSString *codeStyleCellId = @"codeStyleCellId";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView  *codeStyleTableView;
@property (nonatomic, strong) NSArray  *styleArray;

@end

@implementation ViewController



#pragma mark
#pragma mark - 懒加载控件
- (UITableView *)codeStyleTableView
{
    if (!_codeStyleTableView) {
        
        _codeStyleTableView = [[UITableView alloc] init];
        [_codeStyleTableView setBackgroundColor:[UIColor whiteColor]];
        _codeStyleTableView.delegate = self;
        _codeStyleTableView.dataSource = self;
        _codeStyleTableView.scrollEnabled = YES;
        _codeStyleTableView.estimatedRowHeight = XWLayout(88*3);
        _codeStyleTableView.rowHeight = UITableViewAutomaticDimension;
        _codeStyleTableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
        [_codeStyleTableView setTableFooterView:[[UIView alloc]initWithFrame:CGRectZero]];
        [_codeStyleTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:codeStyleCellId];
    }
    return _codeStyleTableView;
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.navigationItem.title = @"验证码Demo";
    self.view.backgroundColor = [UIColor yellowColor];
    self.styleArray = @[@"只有下划线的类型",@"只有方块的类型",@"动画和下划线的类型",@"光标和下划线的类型"];
    
    [self creatcodeStyleTableViewUI];
}

#pragma mark
#pragma mark - 初始化界面
- (void)creatcodeStyleTableViewUI
{
    [self.view addSubview:self.codeStyleTableView];
    [_codeStyleTableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view);
        make.leading.trailing.equalTo(self.view);
        make.bottom.equalTo(self.view);
    }];
}

#pragma mark
#pragma mark - tableView dataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.styleArray.count;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:codeStyleCellId forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = self.styleArray[indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return XWLayout(120);
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        ExampleOneVC *onevc = [[ExampleOneVC alloc]init];
        onevc.titileStr = self.styleArray[indexPath.row];
        [self.navigationController pushViewController:onevc animated:YES];
    }
    
    if (indexPath.row == 1) {
        ExampleTwoVC *twovc = [[ExampleTwoVC alloc]init];
        twovc.titileStr = self.styleArray[indexPath.row];
        [self.navigationController pushViewController:twovc animated:YES];
    }
    
    if (indexPath.row == 2) {
        ExampleThreeVC *threevc = [[ExampleThreeVC alloc]init];
        threevc.titileStr = self.styleArray[indexPath.row];
        [self.navigationController pushViewController:threevc animated:YES];
    }
    
    if (indexPath.row == 3) {
        ExampleFourVC *fourvc = [[ExampleFourVC alloc]init];
        fourvc.titileStr = self.styleArray[indexPath.row];
        [self.navigationController pushViewController:fourvc animated:YES];
    }
    
}

@end
