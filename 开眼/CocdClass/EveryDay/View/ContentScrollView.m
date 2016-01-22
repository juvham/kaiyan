//
//  ContentScrollView.m
//  开眼
//
//  Created by juvham on 16/1/21.
//  Copyright © 2016年 juvham. All rights reserved.
//

#import "ContentScrollView.h"
#import "ImageContentView.h"
#import "EveryDayModel.h"
//#import "EveryDayTableViewController.h"
@interface ContentScrollView ()

@property (nonatomic ,assign ,readwrite) NSInteger currentIndex;

@end
@implementation ContentScrollView

- (instancetype)initWithFrame:(CGRect)frame imageArray:(NSArray *)imageArray index:(NSInteger)index{
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        self.contentSize = CGSizeMake([imageArray count] * kWidth, 0);
        
        self.bounces = NO;
        
        self.pagingEnabled = YES;
        
        self.contentOffset = CGPointMake(index * kWidth, 0);
        
        for (int i = 0; i < [imageArray count]; i ++) {
            
            ImageContentView *sonView = [[ImageContentView alloc]initWithFrame:CGRectMake(i * kWidth, 0, kWidth, kHeight) Width:35 model:imageArray[i] collor:[UIColor whiteColor]];
            
            EveryDayModel *model = [[EveryDayModel alloc]init];
            
            model = imageArray[i];
            
            [sonView.picture sd_setImageWithURL:[NSURL URLWithString:model.coverForDetail] placeholderImage:nil];
            
            [self addSubview:sonView];;
        }
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
