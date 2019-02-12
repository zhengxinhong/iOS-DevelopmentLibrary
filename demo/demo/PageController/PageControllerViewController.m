//
//  PageControllerViewController.m
//  demo
//
//  Created by 李皓白 on 2019/2/12.
//  Copyright © 2019年 李皓白. All rights reserved.
//

#import "PageControllerViewController.h"
#import "PageContorlController.h"


@interface PageControllerViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView * tableView;
    
    NSArray * itemArray;
}
@end

@implementation PageControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    itemArray = @[@"分页控制器"];
    
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
        [self presentViewController:[[PageContorlController alloc] init] animated:NSLayoutAttributeCenterYWithinMargins completion:nil];
    }else if (indexPath.row == 1){
        
        [self presentViewController:[[PageControllerViewController alloc] init] animated:NSLayoutAttributeCenterYWithinMargins completion:nil];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
