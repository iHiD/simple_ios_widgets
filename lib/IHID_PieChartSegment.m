//
//  IHID_PieChartSegment.m
//  Meducation
//
//  Created by Jeremy Walker on 05/04/2012.
//  Copyright (c) 2012 New Media Education Ltd. All rights reserved.
//

#import "IHID_PieChartSegment.h"

@implementation IHID_PieChartSegment

@synthesize percentage, color;

+(id)initWithPercentage: (CGFloat)thePercentage color:(UIColor*) theColor {
    return [[[IHID_PieChartSegment alloc] initWithPercentage:thePercentage color:theColor] autorelease];
}

-(id)initWithPercentage: (CGFloat)thePercentage color:(UIColor*) theColor
{
    if(!(self = [self init])) 
        return nil;
    
    self.percentage = thePercentage;
    self.color = theColor;
    
    return self;
}

@end
