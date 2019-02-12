//
//  PageSecondViewController.m
//  demo
//
//  Created by 李皓白 on 2019/2/12.
//  Copyright © 2019年 李皓白. All rights reserved.
//

#import "PageSecondViewController.h"

@interface PageSecondViewController ()

@end

@implementation PageSecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed: arc4random()%255 / 255. green:arc4random()%255 / 255. blue:arc4random()%255 / 255. alpha:1];
    NSLog(@"second");
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
