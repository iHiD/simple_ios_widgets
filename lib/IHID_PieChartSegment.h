//
//  IHID_PieChartSegment.h
//  Meducation
//
//  Created by Jeremy Walker on 05/04/2012.
//  Copyright (c) 2012 New Media Education Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IHID_PieChartSegment : NSObject
@property(nonatomic, assign) CGFloat percentage;
@property(nonatomic, retain) UIColor* color;

+(id)initWithPercentage: (CGFloat)percentage color:(UIColor*) color;
-(id)initWithPercentage: (CGFloat)percentage color:(UIColor*) color;

@end
