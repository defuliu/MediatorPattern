//
//  Colleage.m
//  Mediator中介者模式二
//
//  Created by 刘德福 on 2018/4/24.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "Colleage.h"

@implementation Colleage

- (void)changeValue:(float)value{
    self.value = value;
    if (self.delegate && [self.delegate respondsToSelector:@selector(colleageValue:)]) {
        [self.delegate colleageValue:self];
    }
}

@end
