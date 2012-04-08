# Simple IOS Piecharts

A ridiculously simple pie-chart library for IOS apps.

### Installation and Usage

Simple copy the files into your application and then do something like this:

    // Create the view and add it to the current view
    IHID_PieChartView* pieChartView = [[IHID_PieChartView alloc] initWithFrame: CGRectMake(0,0,100,100)];
    [foobar addSubView: pieChartView];

    // Set the color to be used if the segment percentages don't add up to 1.
    pieChartView.baseColor = [IHID_Colors pieChartBaseColor];

    // Add segments via:
    IHID_PieChartSegment* segment1 = [IHID_PieChartSegment initWithPercentage:0.3 color:[UIColor greenColor]];
    IHID_PieChartSegment* segment2 = [IHID_PieChartSegment initWithPercentage:0.3 color:[UIColor redColor]];
    pieChartView.segments = [NSArray arrayWithObjects:segment1, segment2, nil];

### Questions
Email me or contact me on Github. I'm happy to help.

### Licence:
(The MIT License)

Copyright © 2012:
[link Jeremy Walker]("https://github.com/ihid")

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the ‘Software’), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED ‘AS IS’, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.