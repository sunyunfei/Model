//
//  FOldModel.m
//  Model
//
//  Created by 孙云 on 16/1/12.
//  Copyright © 2016年 haidai. All rights reserved.
//
//.m实现
#import "FOldModel.h"
#import "SOldModel.h"
@implementation FOldModel
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
        NSMutableArray *soldArray = [NSMutableArray array];
        for (NSDictionary *dic in self.messageArray) {
            SOldModel *model = [[SOldModel alloc]initWithDic:dic];
            [soldArray addObject:model];
        }
        self.messageArray = soldArray;
    }
    return self;
}
@end
