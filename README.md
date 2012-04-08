# Simple IOS Piecharts

A ridiculously simple pie-chart library for IOS apps.

### Installation and Usage

Simple copy the files into your application and then do something like this:

`
// Create the view and add it to the current view
IHID_PieChartView* pieChartView = [[IHID_PieChartView alloc] initWithFrame: CGRectMake(0,0,100,100)];
[foobar addSubView: pieChartView];

// Set the color to be used if the segment percentages don't add up to 1.
pieChartView.baseColor = [IHID_Colors pieChartBaseColor];

// Add segments via:
IHID_PieChartSegment* segment1 = [IHID_PieChartSegment initWithPercentage:0.3 color:[UIColor greenColor]];
IHID_PieChartSegment* segment2 = [IHID_PieChartSegment initWithPercentage:0.3 color:[UIColor redColor]];
pieChartView.segments = [NSArray arrayWithObjects:segment1, segment2, nil];
`

### Questions
Email me or contact me on Github. I'm happy to help.