//
//  PageViewController.h
//  PageScroller
//
//  Created by Hari Kunwar on 10/28/13.
//  Copyright (c) 2013 Hari Kunwar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageViewController : UIViewController

@property (nonatomic, assign) NSInteger pageIndex;

+ (PageViewController *)pageViewControllerWithIndex:(NSInteger)pageIndex;

@end
