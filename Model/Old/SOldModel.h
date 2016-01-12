//
//  SOldModel.h
//  Model
//
//  Created by 孙云 on 16/1/12.
//  Copyright © 2016年 haidai. All rights reserved.
//
//姓名表的内层model,包括姓名，性别
#import <Foundation/Foundation.h>

@interface SOldModel : NSObject
@property(nonatomic,copy)NSString *name;//姓名
@property(nonatomic,copy)NSString *sex;//性别
- (instancetype)initWithDic:(NSDictionary *)dic;
@end
