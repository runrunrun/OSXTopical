//
//  PageViewController.m
//  PageScroller
//
//  Created by Hari Kunwar on 10/28/13.
//  Copyright (c) 2013 Hari Kunwar. All rights reserved.
//

#import "PageViewController.h"

#define SECONDS_PER_DAY 60*60*24

@interface PageViewController ()


@end

@implementation PageViewController

+ (PageViewController *)pageViewControllerWithIndex:(NSInteger)pageIndex
{
    return [[self alloc] initWithPageIndex:pageIndex];
}

- (id)initWithPageIndex:(NSInteger)pageIndex
{
    self = [super init];
    
    if (self) {
        _pageIndex = pageIndex;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UILabel *dateLabel = [[UILabel alloc] initWithFrame:self.view.bounds];
    
    CGFloat timeOffset = _pageIndex * SECONDS_PER_DAY;
    NSDate *date = [[NSDate date] dateByAddingTimeInterval:timeOffset];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    NSString *dateString = [dateFormatter stringFromDate:date];

    dateLabel.text = dateString;
    dateLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:dateLabel];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
