//
//  PieChartView.m
//  PieChart
//
//  Created by Harsh Jaiswal on 01/06/16.
//  Copyright © 2016 Harsh Jaiswal. All rights reserved.
//

#import "PieChartView.h"
#import "SliceLayer.h"

const NSTimeInterval progressAnimationDuration = 0.25;

@implementation PieChartView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initVariables];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initVariables];
    }
    return self;
}

- (void)initVariables {
    self.animationDuration = progressAnimationDuration;
    self.backgroundColor = [UIColor clearColor];
    self.opaque = NO;
    self.tintColor = [UIColor colorWithRed:0.2 green:0.45 blue:0.8 alpha:1.0];
    self.trackColor = [UIColor whiteColor];
    // On Retina displays, the layer must have its resolution doubled so it does not look blocky.
    self.layer.contentsScale = [UIScreen mainScreen].scale;
}

- (float) progress
{
    SliceLayer *layer = (SliceLayer *)self.layer;
    return layer.progress;
}

- (void) setProgress:(float)progress
{
    BOOL growing = progress > self.progress;
    [self setProgress:progress animated:growing];
}

- (void) setProgress:(float)progress animated:(BOOL)animated
{
    // Coerce the value
    if(progress < 0.0f)
        progress = 0.0f;
    else if(progress > 1.0f)
        progress = 1.0f;
    
    // Apply to the layer
    SliceLayer *layer = (SliceLayer *)self.layer;
    if(animated)
    {
        CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"progress"];
        animation.duration = self.animationDuration;
        animation.fromValue = [NSNumber numberWithFloat:layer.progress];
        animation.toValue = [NSNumber numberWithFloat:progress];
        [layer addAnimation:animation forKey:@"progressAnimation"];
        
        layer.progress = progress;
    }
    
    else {
        layer.progress = progress;
        [layer setNeedsDisplay];
    }
}

- (UIColor *)tintColor
{
    SliceLayer *layer = (SliceLayer *)self.layer;
    return layer.tintColor;
}
- (void) setTintColor:(UIColor *)tintColor
{
    SliceLayer *layer = (SliceLayer *)self.layer;
    layer.tintColor = tintColor;
    [layer setNeedsDisplay];
}

- (UIColor *)trackColor
{
    SliceLayer *layer = (SliceLayer *)self.layer;
    return layer.trackColor;
}

- (void) setTrackColor:(UIColor *)trackColor
{
    SliceLayer *layer = (SliceLayer *)self.layer;
    layer.trackColor = trackColor;
    [layer setNeedsDisplay];
}


- (float) startAngle
{
    SliceLayer *layer = (SliceLayer *)self.layer;
    return layer.startAngle;
}

- (void) setStartAngle:(float)startAngle
{
    SliceLayer *layer = (SliceLayer *)self.layer;
    layer.startAngle = startAngle;
    [layer setNeedsDisplay];
}

@end
