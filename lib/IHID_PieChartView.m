//
//  IHID_PieChartView.m
//  Meducation
//
//  Created by Jeremy Walker on 04/04/2012.
//  Copyright (c) 2012 New Media Education Ltd. All rights reserved.
//

#import "IHID_PieChartView.h"
#import "IHID_PieChartSegmentView.h"
#import "IHID_PieChartSegment.h"

@implementation IHID_PieChartView

@synthesize segments, baseColor;

/*
- (id)initWithFrame:(CGRect)frame
          baseColor:(UIColor*) color
          segments: (IHID_PieChartSegment*) firstSegment, ...
{
    
    if(!(self = [self initWithFrame:frame baseColor:color]))
        return nil;
    
    va_list args;
    va_start(args, firstSegment);
    for (IHID_PieChartSegment* segment = firstSegment; segment != nil; segment = va_arg(args, IHID_PieChartSegment*)) {
        [self.segments addObject: segment];
    }
    va_end(args);
    
    return self;
 }*/

-(void)layoutSubviews {
    self.backgroundColor = [UIColor clearColor];
    self.opaque = NO; 
    [super layoutSubviews];
}

-(void)drawRect:(CGRect)rect
{   
    // Generate a subview frame of the same width and height but at 0,0
    CGPoint rectCenter = CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2);
    CGFloat radius = self.bounds.size.width / 2;
    
    NSMutableArray* theSegments = [NSMutableArray arrayWithArray:self.segments];
    
    // Add a final segment if necessary
    CGFloat remainingPercentage = 1;
    for(IHID_PieChartSegment* segment in theSegments) 
        remainingPercentage -= segment.percentage;
    
    if(remainingPercentage > 0) 
        [theSegments addObject:[[IHID_PieChartSegment alloc] initWithPercentage:remainingPercentage color:self.baseColor]];
    
    CGFloat startPercentage = 0;
    for(IHID_PieChartSegment* segment in theSegments) 
    {
        CGFloat startAngle = (startPercentage + 0.75) * 2 * M_PI;
        CGFloat endAngle = (startPercentage + segment.percentage + 0.75) * 2 * M_PI;        
        UIBezierPath* path = [UIBezierPath bezierPathWithArcCenter: rectCenter
                                                            radius: radius 
                                                        startAngle: startAngle
                                                          endAngle: endAngle
                                                         clockwise: YES];
        [path addLineToPoint:rectCenter];
        [segment.color setFill];
        [path fill];
        
        startPercentage += segment.percentage;
    }
}

@end