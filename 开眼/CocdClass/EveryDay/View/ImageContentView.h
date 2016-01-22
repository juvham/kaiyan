//
//  ImageContentView.h
//  开眼
//
//  Created by juvham on 16/1/21.
//  Copyright © 2016年 juvham. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ContentView;
@class EveryDayModel;

@interface ImageContentView : UIView

//@property (nonatomic, strong) ContentView *contentView;



@property (nonatomic, strong) UIImageView *picture;

- (instancetype)initWithFrame:(CGRect)frame Width:(CGFloat)width model:(EveryDayModel *)model collor:(UIColor *)collor;

- (void)imageOffset;
@end
