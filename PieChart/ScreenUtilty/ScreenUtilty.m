//
//  ScreenUtilty.m
//  PieChart
//
//  Created by Harsh Jaiswal on 01/06/16.
//  Copyright © 2016 Harsh Jaiswal. All rights reserved.
//

#import "ScreenUtilty.h"
#import "HomeView.h"

@implementation ScreenUtilty

+ (UINavigationController *)getRootNavigationController:(NSString *)viewName {
    UINavigationController *rootNavigation;
    if ([viewName isEqualToString:NSStringFromClass([HomeView class])]) {
        HomeView *homeView = [[HomeView alloc]
                              initWithNibName:NSStringFromClass([HomeView class])
                              bundle:nil];
        rootNavigation = [[UINavigationController alloc]
                          initWithRootViewController:homeView];
    }
    return rootNavigation;
}

@end
