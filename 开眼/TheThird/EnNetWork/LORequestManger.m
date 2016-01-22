//
//  LORequestManger.m
//  PlanB
//
//  Created by young on 15/5/6.
//  Copyright (c) 2015年 young. All rights reserved.
//

#import "LORequestManger.h"
#define serverUrl @"http://192.168.1.1:8080/jiekou"

@implementation LORequestManger



+ (void)POST:(NSString *)URL params:(NSDictionary * )params success:(void (^)(id response))success
     failure:(void (^)(AFHTTPRequestOperation *operation,NSError *error))Error
{
    // 创建请求管理者
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    // 请求超时时间

    manager.requestSerializer.timeoutInterval = 30;
    NSString *postStr = URL;
    if (![URL hasPrefix:@"http"]) {
        
        postStr = [NSString stringWithFormat:@"%@%@", serverUrl,URL] ;
    }
    NSMutableDictionary *dict = [params mutableCopy];
    
    
    // 发送post请求
    [manager POST:postStr parameters:dict success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        // 请求成功
        NSDictionary *responseDict = (NSDictionary *)responseObject;
        success(responseDict);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {// 请求失败
        Error( operation,error);
        
    }];


}

+ (void)GET:(NSString *)URL
    success:(void (^)(id response))success
    failure:(void (^)(AFHTTPRequestOperation *operation,NSError *error))Error
{
    // 获得请求管理者
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc] init];
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    [manager.requestSerializer setHTTPShouldHandleCookies:NO];
    manager.requestSerializer.timeoutInterval = 30;
    NSString *getStr = URL;
//    NSLog(@"getStr======%@",getStr);
    if (![URL hasPrefix:@"http"]) {
        
        getStr = [NSString stringWithFormat:@"%@%@", serverUrl,URL] ;
    }

   
    // 发送GET请求
    [manager GET:getStr parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
//        NSLog(@"getStr------------%@",getStr);
        NSDictionary *responseDict = (NSDictionary *)responseObject;
     
            success(responseDict);

        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (!operation.responseObject) {
            NSLog(@"网络错误");
        }
        Error( operation,error);
    }];

    
}

+ (void)UPLOADIMAGE:(NSString *)URL
             params:(NSDictionary *)params
        uploadImage:(UIImage *)image
            success:(void (^)(id response))success
            failure:(void (^)(AFHTTPRequestOperation *operation,NSError *error))Error
{
    // 创建请求管理者
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    manager.requestSerializer.timeoutInterval = 30;
    //    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    //
    //    [manager.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Accept"];
    
    NSString *postStr = [NSString stringWithFormat:@"%@%@", serverUrl,URL] ;
    NSMutableDictionary *dict = [params mutableCopy];

    [manager POST:postStr parameters:dict constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        NSData *imageData = UIImageJPEGRepresentation(image, 0.1);
        [formData appendPartWithFileData:imageData name:@"img" fileName:@"head.jpg" mimeType:@"image/jpeg"];
        
    } success:^(AFHTTPRequestOperation *operation, id responseObject) {

        NSDictionary *responseDict = (NSDictionary *)responseObject;
                success(responseDict);
 
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        Error( operation,error);
        
    }];


}

- (void)downloadWithSongUrl:(NSString *)songUrl
{
    NSURL *url = [NSURL URLWithString:songUrl];
//    NSMutableURLRequest *request = [NSMutableURLRequest ]
}
@end
