//
//  PlayViewController.h
//  开眼
//
//  Created by lanou on 16/1/9.
//  Copyright © 2016年 谢旭峰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "KRVideoPlayerController.h"
@class EveryDayModel;

@interface PlayViewController : KRVideoPlayerController

@property (nonatomic, strong) NSArray *modelArray;

@property (nonatomic, assign) NSInteger index;

@end
