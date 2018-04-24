//
//  AbstractColleage.h
//  Mediator中介者模式二
//
//  Created by 刘德福 on 2018/4/24.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AbstractColleage;

@protocol colleageDelegate<NSObject>

- (void)colleageValue:(AbstractColleage *)event;

@end

@interface AbstractColleage : NSObject

@property (nonatomic, weak) id <colleageDelegate>delegate;

@end
