//
//  ContentView.h
//  开眼
//
//  Created by juvham on 16/1/21.
//  Copyright © 2016年 juvham. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CustomView;
@class EveryDayModel;
@interface ContentView : UIView

@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UILabel *littleLabel;

@property (nonatomic, strong) UILabel *descripLabel;

@property (nonatomic, strong) UIView *lineView;

@property (nonatomic, strong) CustomView *collectionCustom;

@property (nonatomic, strong) CustomView *shareCustom;

@property (nonatomic, strong) CustomView *cacheCustom;

@property (nonatomic, strong) CustomView *replyCustom;

- (instancetype)initWithFrame:(CGRect)frame Width:(CGFloat)width model:(EveryDayModel *)model collor:(UIColor *)collor;

- (void)setData:(EveryDayModel *)model;

@end
