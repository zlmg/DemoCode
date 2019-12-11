//
//  LLDBViewController.m
//  TestDemo
//
//  Created by ZHOULIMIN on 2019/12/9.
//  Copyright © 2019 zlmg. All rights reserved.
//

#import "LLDBViewController.h"
#import "MMPersonModel.h"

@interface LLDBViewController ()

@property (nonatomic, strong) MMPersonModel *model;

@end

@implementation LLDBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.model = [MMPersonModel new];
    self.model.name = @"修改前的name:abc";
    
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    //先打一个断点，然后在LLDB执行 p self.view.backgroundColor = [UIColor redColor]，在继续运行就可以看到背景色改变了
    
    self.model.name = @"修改后的name:def";
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    
}

@end
