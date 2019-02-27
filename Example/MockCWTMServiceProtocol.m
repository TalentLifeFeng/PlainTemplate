//
//  Copyright © 2014-2018 Beijing Chinaway Technologies Co., Ltd. All rights reserved.
//

//  Created By FengLei On 2018/9/30.

#import "MockCWTMServiceProtocol.h"
/*
#import <G7_ModuleInterface/CWTMServiceProtocol.h>
 */

//appkey
static NSString *const AppKey = @"47a7ccefe0";
//secret key
static NSString *const SecretKey = @"20c079d77bd0c11c60c8f1d603f7f1db";

/*
@BeeHiveService(CWTMServiceProtocol, MockCWTMServiceProtocol);
@interface MockCWTMServiceProtocol ()<CWTMServiceProtocol>

@end
 */

@implementation MockCWTMServiceProtocol

- (NSString *)baseURL {
#if ENVIRONMENT == 0
    return @"http://test.truckmanager.g7s.chinawayltd.com";
#elif ENVIRONMENT == 1
    return @"https://demo.truckmanager.g7s.chinawayltd.com";
#elif ENVIRONMENT == 2
    return @"https://truckmanager.g7s.huoyunren.com";
#else
#error Invalid value for ENVIRONMENT
#endif
}

- (NSString *)appKey {
    return AppKey;
}

- (NSString *)secretKey {
    return SecretKey;
}

- (NSString *)token {
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"token"];
}

@end
