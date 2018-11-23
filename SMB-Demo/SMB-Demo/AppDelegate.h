//
//  AppDelegate.h
//  SMB-Demo
//
//  Created by Jakey on 2018/11/23.
//  Copyright © 2018 Jakey. All rights reserved.
//

#import <UIKit/UIKit.h>
@class RootViewController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) RootViewController *rootViewController;
@property (strong, nonatomic) UINavigationController *navigationController;
+(AppDelegate*)APP;
@end
