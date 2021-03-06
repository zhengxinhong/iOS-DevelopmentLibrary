//
//  ViewController.m
//  demo
//
//  Created by 李皓白 on 2019/1/17.
//  Copyright © 2019年 李皓白. All rights reserved.
//

#import "ViewController.h"
#import "PickerViewController.h"   // 时间选择器
#import "PageControllerViewController.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView * tableView;
    
    NSArray * itemArray;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.navigationController.navigationBar.translucent = NO;
    itemArray = @[@"选择器",@"分页控制器"];
    
    tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-64)];
    
    tableView.backgroundColor = [UIColor orangeColor];
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return itemArray.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell * cell = [[UITableViewCell alloc] init];
    cell.textLabel.text = itemArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 0) {
        [self presentViewController:[[PickerViewController alloc] init] animated:NSLayoutAttributeCenterYWithinMargins completion:nil];
    }else if (indexPath.row == 1){
        
        [self presentViewController:[[PageControllerViewController alloc] init] animated:NSLayoutAttributeCenterYWithinMargins completion:nil];
    }
}

@end
