//
//  MediatorOne.h
//  Mediator中介者模式二
//
//  Created by 刘德福 on 2018/4/24.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "AbstractMediator.h"
#import "Colleage.h"

@interface MediatorOne : AbstractMediator

@property (nonatomic, strong)Colleage *colleageA;
@property (nonatomic, strong)Colleage *colleageB;
@property (nonatomic, strong)Colleage *colleageC;


- (NSDictionary *)values;

@end
