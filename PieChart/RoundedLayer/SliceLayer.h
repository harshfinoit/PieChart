//
//  RoundedLayer.h
//  PieChart
//
//  Created by Harsh Jaiswal on 01/06/16.
//  Copyright © 2016 Harsh Jaiswal. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@interface SliceLayer : CALayer
@property (nonatomic)CGFloat progress;
@property (nonatomic)CGFloat startAngle;
@property (nonatomic)CGFloat strokeWidth;
@property (nonatomic , strong)UIColor *tintColor;
@property (nonatomic , strong)UIColor *trackColor;
@end
