//
//  ContentScrollView.h
//  开眼
//
//  Created by juvham on 16/1/21.
//  Copyright © 2016年 juvham. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ImageContentView;
@class ContentScrollView;
@protocol ContentScrollViewDelegate <UIScrollViewDelegate>

- (void)headerScroll:(ContentScrollView *)scroll didSelectItemAtIndex:(NSInteger)index;
- (void)headerScroll:(ContentScrollView *)scroll didClose:(BOOL)close;

@end

@interface ContentScrollView : UIScrollView

@property (nonatomic ,assign ,readonly) NSInteger currentIndex;

- (void)setCurrentIndex:(NSInteger)currentIndex;

- (instancetype)initWithFrame:(CGRect)frame imageArray:(NSArray *)imageArray index:(NSInteger)index;

@end
