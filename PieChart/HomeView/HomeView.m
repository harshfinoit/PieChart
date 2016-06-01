//
//  HomeView.m
//  PieChart
//
//  Created by Harsh Jaiswal on 01/06/16.
//  Copyright © 2016 Harsh Jaiswal. All rights reserved.
//

#import "HomeView.h"
#import "SliceLayer.h"

@interface HomeView ()

@end

@implementation HomeView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UIColor *tintColor = [UIColor orangeColor];
    [[UISlider appearance] setMinimumTrackTintColor:tintColor];
    [[PieChartView appearance] setTintColor:tintColor];
    
    self.progressView.trackColor = [UIColor colorWithWhite:0.80 alpha:1.0];
    
    self.progressView.startAngle = (3.0*M_PI)/2.0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
