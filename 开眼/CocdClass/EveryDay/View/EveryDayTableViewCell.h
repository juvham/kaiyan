//
//  EveryDayTableViewCell.h
//  开眼
//
//  Created by juvham on 16/1/21.
//  Copyright © 2016年 juvham. All rights reserved.
//

#import <UIKit/UIKit.h>
@class EveryDayModel;

@interface EveryDayTableViewCell : UITableViewCell

@property (nonatomic, strong) UIImageView *picture;

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UILabel *littleLabel;

@property (nonatomic, strong) UIView *coverview;

@property (nonatomic, strong) EveryDayModel *model;

- (CGFloat)cellOffset;

@end
