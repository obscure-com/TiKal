/**
 * Appcelerator Titanium Mobile
 * Copyright (c) 2009-2013 by Appcelerator, Inc. All Rights Reserved.
 * Licensed under the terms of the Apache Public License
 * Please see the LICENSE included with this distribution for details.
 */

#import "ComObscureTikalKalView.h"
#import "Kal.h"

@interface ComObscureTikalKalView ()
@property (nonatomic, strong) KalViewController * viewController;
@end

@implementation ComObscureTikalKalView


- (id)init {
    if (self = [super init]) {
        self.viewController = [[KalViewController alloc] init];
        TiThreadPerformOnMainThread(^{
            [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(selectedDateChanged:) name:kKalNotificationSelectedDate object:nil];
        }, NO);
        [self addSubview:self.viewController.view];
    }
    return self;
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    [super dealloc];
}

- (void)selectedDateChanged:(NSNotification *)notification {
    NSDictionary * dict = [NSDictionary dictionaryWithObject:self.viewController.selectedDate forKey:@"selectedDate"];
    TiThreadPerformOnMainThread(^{
        [self.proxy fireEvent:@"select" withObject:dict];
    }, YES);
}

@end
