//
//  IHID_PieChartView.h
//  Meducation
//
//  Created by Jeremy Walker on 04/04/2012.
//  Copyright (c) 2012 New Media Education Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface IHID_PieChartView : UIView

@property(nonatomic,retain) NSMutableArray* segments;
@property(nonatomic,retain) UIColor* baseColor;

//- (id)initWithFrame:(CGRect)frame baseColor:(UIColor*) color;
//- (id)initWithFrame:(CGRect)frame baseColor:(UIColor*) color segments: IHID_PieChartSegment, ... NS_REQUIRES_NIL_TERMINATION;
@end
