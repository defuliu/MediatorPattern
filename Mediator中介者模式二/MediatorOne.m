//
//  MediatorOne.m
//  Mediator中介者模式二
//
//  Created by 刘德福 on 2018/4/24.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "MediatorOne.h"

@implementation MediatorOne

- (NSDictionary *)values
{
    return  @{
              @"A":@(self.colleageA.value),
              @"B":@(self.colleageB.value),
              @"C":@(self.colleageC.value),
              };
    
}

- (void)colleageValue:(AbstractColleage *)event
{
    if ([event isEqual:self.colleageA]) {
    
        self.colleageB.value = self.colleageA.value *4;
        self.colleageC.value = self.colleageA.value *6;
    }
    else if ([event isEqual:self.colleageB]){
        self.colleageA.value = self.colleageA.value *2;
        self.colleageB.value = self.colleageB.value /2;
        self.colleageC.value = self.colleageC.value /5;
    }
    else {
        self.colleageA.value = self.colleageA.value *2;
        self.colleageB.value = self.colleageB.value *3;
        self.colleageC.value = self.colleageC.value *4;
    }
}

@end
