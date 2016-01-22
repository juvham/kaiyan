//
//  EveryDayTableViewCell.m
//  开眼
//
//  Created by juvham on 16/1/21.
//  Copyright © 2016年 juvham. All rights reserved.
//

#import "EveryDayTableViewCell.h"
#import "EveryDayModel.h"

@implementation EveryDayTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {

        self.selectionStyle = UITableViewCellSeparatorStyleNone;

        self.clipsToBounds = YES;
        
        _picture = [[UIImageView alloc]initWithFrame:CGRectMake(0, -(kHeight/1.7 -250)/2, kWidth, kHeight/1.7)];

        _picture.contentMode = UIViewContentModeScaleAspectFill;
        [self.contentView  addSubview:_picture];

        _coverview = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kWidth, 250)];
        _coverview.backgroundColor = [UIColor colorWithWhite:0 alpha:0.33];
        [self.contentView addSubview:_coverview];

        _titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 250 / 2 - 30, kWidth, 30)];
        
        _titleLabel.font = [UIFont boldSystemFontOfSize:16];
        
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        
        _titleLabel.textColor = [UIColor whiteColor];
        
        [self.contentView addSubview:_titleLabel];
        
        _littleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 250 / 2 + 30, kWidth, 30)];
        
        _littleLabel.font = [UIFont systemFontOfSize:14];
        
        _littleLabel.textAlignment = NSTextAlignmentCenter;
        
        _littleLabel.textColor = [UIColor whiteColor];
        
        [self.contentView addSubview:_littleLabel];


        
    }
    return self;
    
}

- (void)setModel:(EveryDayModel *)model{
    
    if (_model != model) {
        
        [_picture sd_setImageWithURL:[NSURL URLWithString:model.coverForDetail] placeholderImage:nil];
        
        _titleLabel.text = model.title;
        
        // 转换时间
        NSInteger time = [model.duration integerValue];
        
        NSString *timeString = [NSString stringWithFormat:@"%02ld'%02ld''",time/60,time% 60];//显示的是音乐的总时间
        
        NSString *string = [NSString stringWithFormat:@"#%@ / %@",model.category, timeString];
        
        _littleLabel.text = string;
    }
    
}

- (CGFloat)cellOffset {

    CGRect centerToWindow = [self convertRect:self.bounds toView:self.window];
    CGFloat centerY = CGRectGetMidY(centerToWindow);
    CGPoint windowCenter = self.superview.center;

    CGFloat cellOffsetY = centerY - windowCenter.y;

    CGFloat offsetDig =  cellOffsetY / self.superview.frame.size.height *2;
    CGFloat offset =  -offsetDig * (kHeight/1.7 - 250)/2;

    CGAffineTransform transY = CGAffineTransformMakeTranslation(0,offset);

//    self.titleLabel.transform = transY;
//    self.littleLabel.transform = transY;

    self.picture.transform = transY;

    return offset;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
