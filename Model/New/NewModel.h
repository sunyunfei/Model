//
//  NewModel.h
//  Model
//
//  Created by 孙云 on 16/1/12.
//  Copyright © 2016年 haidai. All rights reserved.
//
//.h声明
#import <Foundation/Foundation.h>
//第一个model
@interface NewModel : NSObject
@property(nonatomic,copy)NSString *familyName;//姓氏
@property(nonatomic,strong)NSArray *messageArray;//信息
- (instancetype)initWithDic:(NSDictionary *)dic;
@end

//第二个model
@interface NewModel2 : NSObject
@property(nonatomic,copy)NSString *name;//姓名
@property(nonatomic,copy)NSString *sex;//性别
- (instancetype)initWithDic:(NSDictionary *)dic;
@end