//
//  NewModel.m
//  Model
//
//  Created by 孙云 on 16/1/12.
//  Copyright © 2016年 haidai. All rights reserved.
//
//.m实现
#import "NewModel.h"
// 第一个model
@implementation NewModel
/**
 *  构造
 *
 *  @param dic <#dic description#>
 *
 *  @return <#return value description#>
 */
- (instancetype)initWithDic:(NSDictionary *)dic
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dic];
        //创建一个可变数组加载soldarray
        NSMutableArray *newArray = [NSMutableArray array];
        for (NSDictionary *dic in self.messageArray) {
            NewModel2 *model = [[NewModel2 alloc]initWithDic:dic];
            [newArray addObject:model];
        }
        self.messageArray = newArray;
    }
    return self;
}
@end

//第二个model
@implementation NewModel2
/**
 *  构造
 *
 *  @param dic <#dic description#>
 *
 *  @return <#return value description#>
 */
- (instancetype)initWithDic:(NSDictionary *)dic
{
    self = [super init];
    if (self) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}
@end