//
//  PlayViewController.m
//  开眼
//
//  Created by lanou on 16/1/9.
//  Copyright © 2016年 谢旭峰. All rights reserved.
//

#import "PlayViewController.h"
#import <AVKit/AVKit.h>
#import <AVFoundation/AVFoundation.h>
#import "EveryDayModel.h"
@interface PlayViewController ()

//@property (nonatomic, strong) AVPlayer *player;
//
//@property (nonatomic, strong) AVPlayerItem *playerItem;

@end

@implementation PlayViewController

- (void)setModelArray:(NSArray *)modelArray {
    
    if (![modelArray isEqualToArray:_modelArray]) {
        
        _modelArray = modelArray;
    }
}

- (void)setIndex:(NSInteger)index {
    
    if (index != _index) {
        
        _index = index;
        
        EveryDayModel *model = [_modelArray objectAtIndex:index];
        [self setContentURL:[NSURL URLWithString:model.playUrl]];
    }
    
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
