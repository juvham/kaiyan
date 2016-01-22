//
//  LORequestManger.h
//  PlanB
//
//  Created by young on 15/5/6.
//  Copyright (c) 2015年 young. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
/**
 *  base网络请求
 */

@interface LORequestManger : NSObject

+ (void)POST:(NSString *)URL params:(NSDictionary * )params success:(void (^)(id response))success
     failure:(void (^)(AFHTTPRequestOperation *operation,NSError *error))Error;


+ (void)GET:(NSString *)URL
    success:(void (^)(id response))success
    failure:(void (^)(AFHTTPRequestOperation *operation,NSError *error))Error;

+ (void)UPLOADIMAGE:(NSString *)URL
             params:(NSDictionary *)params
        uploadImage:(UIImage *)image
            success:(void (^)(id response))success
            failure:(void (^)(AFHTTPRequestOperation *operation,NSError *error))Error;
@end
