//
//  IHID_PieChartSegmentView.m
//  Meducation
//
//  Created by Jeremy Walker on 05/04/2012.
//  Copyright (c) 2012 New Media Education Ltd. All rights reserved.
//

#import "IHID_PieChartSegmentView.h"
#import "IHID_PieChartSegment.h"

@implementation IHID_PieChartSegmentView

@synthesize startPercentage, segment;

- (id)initWithFrame:(CGRect)frame 
    startPercentage:(CGFloat) theStartPercentage
         segment:(IHID_PieChartSegment*) theSegment
{
    if(!(self = [self initWithFrame:frame]))
        return nil;
    
    self.startPercentage = theStartPercentage;
    self.segment = theSegment;
    
    self.backgroundColor = [UIColor clearColor];
    self.opaque = NO;   
    return self;
}

- (void)drawRect:(CGRect)rect
{   
    CGFloat startAngle = (startPercentage + 0.75) * 2 * M_PI;
    CGFloat endAngle = (startPercentage + self.segment.percentage + 0.75) * 2 * M_PI;
    CGFloat radius = self.bounds.size.width / 2;
    
    UIBezierPath* path = [UIBezierPath bezierPathWithArcCenter: self.center 
                                                        radius: radius 
                                                    startAngle: startAngle
                                                      endAngle: endAngle
                                                     clockwise: YES];
    
    [path addLineToPoint:self.center];
    
    CGFloat x = self.center.x + (self.bounds.size.width/2) * cos(startAngle);
    CGFloat y = self.center.y + (self.bounds.size.width/2) * sin(startAngle);
    
    [path addLineToPoint:CGPointMake(x, y)];
    [path addClip];
    [self.segment.color setFill];
    UIRectFill(self.bounds);
}
@end
