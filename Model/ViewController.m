//
//  ViewController.m
//  Model
//
//  Created by 孙云 on 16/1/12.
//  Copyright © 2016年 haidai. All rights reserved.
//
//.m实现
#import "ViewController.h"
#import "FOldModel.h"
#import "SOldModel.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //加载表
    [self loadTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/**
 *  数据加载
 */
-(NSArray *)foldArray
{
    if (_foldArray == nil) {
        NSString *path = [[NSBundle mainBundle]pathForResource:@"data.plist" ofType:nil];
        NSArray *oldArray = [NSArray arrayWithContentsOfFile:path];
        NSMutableArray *newArray = [NSMutableArray array];
        for (NSDictionary *dic in oldArray) {
            FOldModel *model = [[FOldModel alloc]initWithDic:dic];
            [newArray addObject:model];
        }
        _foldArray = newArray;
    }
    return _foldArray;
}
/**
 *  加载表的方法
 */
- (void)loadTableView
{
    UITableView *tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
    self.tableView = tableView;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.foldArray.count;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    FOldModel *fModel = self.foldArray[section];
    return fModel.messageArray.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString * const ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    FOldModel *fModel = self.foldArray[indexPath.section];
    SOldModel *sModel = fModel.messageArray[indexPath.row];
    cell.textLabel.text = sModel.name;
    cell.detailTextLabel.text = sModel.sex;
    return cell;
}
-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    FOldModel *fModel = self.foldArray[section];
    return fModel.familyName;
}
@end
