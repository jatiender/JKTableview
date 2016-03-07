//
//  RecyclingScrollView.h
//  RecyclingScrollView
//
//  Created by jatiender
//  Copyright (c) 2016 jatiender. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol JKScrollDataSource;

@interface JKScrollCell : UIScrollView {
    UIView*       contentView;
    NSRange       renderedRange;
    NSMutableSet* reusableCells;
}

@property (nonatomic, assign) id <JKScrollDataSource>dataSource;
@property (nonatomic, assign) CGSize itemSize;

- (id)dequeueReusableCell;

@end


@protocol JKScrollDataSource <NSObject>

- (NSInteger)numberOfItemsInRecyclingScrollView:(JKScrollCell *)scrollView;
- (UIView *)recyclingScrollView:(JKScrollCell *)scrollView
             cellForItemAtIndex:(NSInteger)index;
@end