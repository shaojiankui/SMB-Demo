//
//  RootViewController.m
//  SMB-Demo
//
//  Created by Jakey on 2018/11/23.
//  Copyright © 2018 Jakey. All rights reserved.
//

#import "RootViewController.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [[self class] requestNetPermission];

    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    
//    NSString *remote = @"smb://192.168.203.108";
    NSString *remote = @"smb://192.168.203.136";

}
+(void)requestNetPermission{
    
    // 1. 创建请求对象（可变）
    NSMutableURLRequest * request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:@"http://dev.skyfox.org"]];
    // 2. 设置请求方法为 POST 请求
    request.HTTPMethod = @"POST";
    
    request.HTTPBody = [@"type=focus-c" dataUsingEncoding:NSUTF8StringEncoding];
    
    // 1. 初始化 NSURLSessionDataTask 对象
    NSURLSessionDataTask *dataTask = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        //        NSLog(@"response:%@", [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
        
    }];
    
    [dataTask resume];
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
