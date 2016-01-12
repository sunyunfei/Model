//
//  FOldModel.h
//  Model
//
//  Created by 孙云 on 16/1/12.
//  Copyright © 2016年 haidai. All rights reserved.
//
//姓名表的外层model .h声明
#import <Foundation/Foundation.h>

@interface FOldModel : NSObject
@property(nonatomic,copy)NSString *familyName;//姓氏
@property(nonatomic,strong)NSArray *messageArray;//信息
- (instancetype)initWithDic:(NSDictionary *)dic;
@end
