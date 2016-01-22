//
//  EveryDayModel.m
//  开眼
//
//  Created by juvham on 16/1/21.
//  Copyright © 2016年 juvham. All rights reserved.
//

#import "EveryDayModel.h"

@implementation EveryDayModel

- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    
    if ([key isEqualToString:@"description"]) {
        
        self.descrip = value;
        
    }
    
    if ([key isEqualToString:@"id"]) {
        
        self.ID = [value stringValue];
        
    }
    
}

- (void)setValue:(id)value forKey:(NSString *)key{
    
    [super setValue:value forKey:key];
    
    if ([key isEqualToString:@"duration"]) {
        
        self.duration = [value stringValue];
        
    }
    
//    if ([key isEqualToString:@"collectionCount"]) {
//        
//        self.collectionCount = [value stringValue];
//        
//    }
//    
//    if ([key isEqualToString:@"replyCount"]) {
//        
//        self.replyCount = [value stringValue];
//        
//    }
//    
//    if ([key isEqualToString:@"shareCount"]) {
//        
//        self.shareCount = [value stringValue];
//        
//    }
    
}


@end
