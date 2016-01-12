//
//  SOldModel.m
//  Model
//
//  Created by 孙云 on 16/1/12.
//  Copyright © 2016年 haidai. All rights reserved.
//
//.m实现
#import "SOldModel.h"

@implementation SOldModel
/**
 *   构造
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
