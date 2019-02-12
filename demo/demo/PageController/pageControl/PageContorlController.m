//
//  PageContorlController.m
//  demo
//
//  Created by 李皓白 on 2019/2/12.
//  Copyright © 2019年 李皓白. All rights reserved.
//

#import "PageContorlController.h"
#import "ZWMSegmentController.h"
#import "PageFirstViewController.h"
#import "PageSecondViewController.h"
#import "PageThirdViewController.h"

@interface PageContorlController ()
@property (nonatomic, strong) ZWMSegmentController *segmentVC;
@end

@implementation PageContorlController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.translucent = NO;
    self.title=@"滑动控制器";
    
    PageFirstViewController * firstC = [[PageFirstViewController alloc] init];
    PageSecondViewController * secondC = [[PageSecondViewController alloc] init];
    PageThirdViewController * thirdC = [[PageThirdViewController alloc] init];

    NSArray *array = @[firstC,secondC,thirdC,firstC,secondC,secondC,secondC];
    
    
    self.segmentVC = [[ZWMSegmentController alloc] initWithFrame:CGRectMake(0, 64, self.view.bounds.size.width, self.view.bounds.size.height-64) titles:@[@"热门",@"游戏直播",@"天天向上",@"天天向上",@"天天向上",@"天天向上",@"天天向上"]];
    self.segmentVC.segmentView.showSeparateLine = YES;
    self.segmentVC.segmentView.segmentTintColor = [UIColor redColor];
    self.segmentVC.viewControllers = [array copy];
    if (array.count==1) {
        self.segmentVC.segmentView.style=ZWMSegmentStyleDefault;
    } else {
        self.segmentVC.segmentView.style=ZWMSegmentStyleFlush;
    }
    [self.segmentVC  enumerateBadges:@[@(1),@10]];
    [self addSegmentController:self.segmentVC];
    [self.segmentVC  setSelectedAtIndex:0];
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
