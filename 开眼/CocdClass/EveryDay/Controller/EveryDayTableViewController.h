//
//  EveryDayTableViewController.h
//  开眼
//
//  Created by juvham on 16/1/21.
//  Copyright © 2016年 juvham. All rights reserved.
//

#import <UIKit/UIKit.h>
@class rilegouleView;

//typedef void(^myBlock)(NSInteger);

@interface EveryDayTableViewController : UITableViewController

//@property (nonatomic, copy) myBlock block;

@property (nonatomic, strong) rilegouleView *rilegoule;

@property (nonatomic, strong) UIImageView *BlurredView;

@property (nonatomic, strong) NSArray *array;

@property (nonatomic, strong) NSIndexPath *currentIndexPath;


@end
