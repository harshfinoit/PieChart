//
//  PieChartView.h
//  PieChart
//
//  Created by Harsh Jaiswal on 01/06/16.
//  Copyright © 2016 Harsh Jaiswal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PieChartView : UIView
@property (nonatomic, assign) float progress;   // 0 .. 1
@property (nonatomic, assign) float startAngle; // 0..2π
@property (nonatomic, retain) UIColor *tintColor;
@property (nonatomic, retain) UIColor *trackColor;
@property (nonatomic, assign) CFTimeInterval animationDuration;
@end
