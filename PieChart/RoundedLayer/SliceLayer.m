//
//  RoundedLayer.m
//  PieChart
//
//  Created by Harsh Jaiswal on 01/06/16.
//  Copyright © 2016 Harsh Jaiswal. All rights reserved.
//

#import "SliceLayer.h"

@implementation SliceLayer

- (id) initWithLayer:(id)layer {
    self = [super initWithLayer:layer];
    if (self) {
        if ([layer isKindOfClass:[SliceLayer class]]) {
            SliceLayer *otherSliceLayer = layer;
            self.progress = otherSliceLayer.progress;
            self.startAngle = otherSliceLayer.startAngle;
            self.strokeWidth = otherSliceLayer.strokeWidth;
            self.tintColor = otherSliceLayer.tintColor;
            self.trackColor = otherSliceLayer.trackColor;
        }
    }
    return self;
}

+ (BOOL)needsDisplayForKey:(NSString *)key {
    if ([key isEqualToString:@"progress"]) {
        return YES;
    } else{
        return [super needsDisplayForKey:key];
    }
}


- (void)drawInContext:(CGContextRef)ctx {
    CGFloat radius = MIN(self.bounds.size.width, self.bounds.size.height)/2.0;
    CGPoint center = CGPointMake(self.bounds.size.width/2.0, self.bounds.size.height/2.0);
    
    // Background circle
    CGRect circleRect = CGRectMake(center.x-radius, center.y-radius, radius*2.0, radius*2.0);
    CGContextAddEllipseInRect(ctx, circleRect);
    
    // Elapsed arc
    CGContextAddArc(ctx, center.x, center.y, radius, _startAngle, _startAngle + _progress*2.0*M_PI, 0);
    CGContextAddLineToPoint(ctx, center.x, center.y);
    CGContextClosePath(ctx);
    
    CGContextSetFillColorWithColor(ctx, _tintColor.CGColor);
    CGContextFillPath(ctx);
}


@end
