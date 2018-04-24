//
//  ViewController.m
//  Mediator中介者模式二
//
//  Created by 刘德福 on 2018/4/24.
//  Copyright © 2018年 ZGW. All rights reserved.
//

#import "ViewController.h"
#import "Colleage.h"
#import "MediatorOne.h"

@interface ViewController ()

@property (nonatomic, strong)MediatorOne *mediator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mediator = [[MediatorOne alloc] init];
    
    Colleage *colleageA = [Colleage new];
    Colleage *colleageB = [Colleage new];
    Colleage *colleageC = [Colleage new];
    
    
    self.mediator.colleageA = colleageA;
    self.mediator.colleageB = colleageB;
    self.mediator.colleageC = colleageC;
    
    colleageA.delegate = self.mediator;
    colleageB.delegate = self.mediator;
    colleageC.delegate = self.mediator;
    
    [colleageA changeValue:2.f];
    NSLog(@"%@", [self.mediator values]);
    
    [colleageA changeValue:1.f];
    NSLog(@"%@", [self.mediator values]);

}


@end
