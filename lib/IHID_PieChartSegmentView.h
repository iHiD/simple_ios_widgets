//
//  IHID_PieChartSegmentView.h
//  Meducation
//
//  Created by Jeremy Walker on 05/04/2012.
//  Copyright (c) 2012 New Media Education Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IHID_PieChartSegment;

@interface IHID_PieChartSegmentView : UIView

@property(nonatomic,assign) CGFloat startPercentage;
@property(nonatomic,retain) IHID_PieChartSegment* segment;

- (id)initWithFrame:(CGRect)frame 
    startPercentage:(CGFloat) startPercentage 
            segment:(IHID_PieChartSegment*)segment;

@end
