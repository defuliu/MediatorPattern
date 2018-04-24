//
//  Colleage.h
//  Mediator中介者模式二
//
//  Created by 刘德福 on 2018/4/24.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "AbstractColleage.h"

@interface Colleage : AbstractColleage

- (void)changeValue:(float)value;

@property (nonatomic, assign)float value;

@end
