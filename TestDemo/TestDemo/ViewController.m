//
//  ViewController.m
//  TestDemo
//
//  Created by ZHOULIMIN on 2019/12/4.
//  Copyright © 2019 zlmg. All rights reserved.
//

#import "ViewController.h"
#import "LLDBViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [button setTitle:@"click" forState:UIControlStateNormal];
    button.frame = CGRectMake(100, 100, 100, 100);
    [button addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self presentViewController:[LLDBViewController new] animated:YES completion:nil];
}

- (void)clickAction:(UIButton *)button {
    NSLog(@"----------------- Test 控制台日志的打印 -----------------");
//    abort();//终止进程
    [self presentViewController:[LLDBViewController new] animated:YES completion:nil];
}

- (void)testCode {
    
    UITableView *tableView = [UITableView new];
    NSIndexPath *indexPath;
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    
    static NSString *cellId = @"autoCellId";
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    cell.textLabel.text = @"自动抢红包";
    cell.imageView.image = [UIImage imageWithContentsOfFile:@"/baidu_icon.png"];
    
    
    UISwitch *switchView = [UISwitch new];
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    switchView.on = [ud boolForKey:@"mm_auto"];
    [switchView addTarget:self action:@selector(autoChange:) forControlEvents:UIControlEventValueChanged];
    cell.accessoryView = switchView;
}

- (void)autoChange:(UISwitch *)switchView {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:switchView.on forKey:@"mm_auto"];
    [ud synchronize];
}

- (void)test2 {
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"12321" message:@"message" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil];
    [alert show];
    
}


@end
