

#import "CWTouchIDManager.h"
#import <LocalAuthentication/LocalAuthentication.h>

@interface CWTouchIDManager ()

/**
 *  手机是否可以使用TouchId
 */
@property(nonatomic,assign)BOOL canUseTouchId;

@end

@implementation CWTouchIDManager

+ (instancetype)sharedManager {
    
    static CWTouchIDManager *sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[CWTouchIDManager alloc] init];
    });
    
    return sharedManager;
}


#pragma mark 手机是否可以使用touchid
- (BOOL)validateCanUseTouchId
{
    LAContext  *locontext= [[LAContext alloc] init];
    NSError *err;
    self.canUseTouchId = [locontext canEvaluatePolicy:LAPolicyDeviceOwnerAuthentication error:&err];
    
    return [locontext canEvaluatePolicy:LAPolicyDeviceOwnerAuthentication error:&err];
    
}

#pragma mark Getter Method
#pragma mark 手机是否可以使用TouchId
-(BOOL)canUseTouchId
{
    return [self validateCanUseTouchId];
}

#pragma mark 指纹验证解锁的主要方法
-(void)touchIDWithlocalizedFallbackTitle:(NSString *)localizedFallbackTitle localizedReason:(NSString*)localizedReason success:(TouchIDManagerFinnishBlock) touchBlock;
{
    
}
- (void)touchIDWithlocalizedReason:(NSString*)localizedReason success:(TouchIDManagerFinnishBlock) touchBlock;
{
    LAContext  *locontext= [[LAContext alloc] init];
    NSError *err;
    //3.判断设备是否支持指纹识别
    if ([locontext canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&err]) {
        //是否支持
        [locontext  evaluatePolicy:LAPolicyDeviceOwnerAuthentication localizedReason:localizedReason reply:^(BOOL success, NSError * error) {
            NSLog(@"开始指纹解锁");
            dispatch_async(dispatch_get_main_queue(), ^{
                touchBlock(success,error);
            });
        }];
    }
    else{
        NSLog(@"不支持指纹识别");
        switch (err.code) {
            case LAErrorTouchIDNotEnrolled:
            {
                NSLog(@"TouchID is not enrolled");
                break;
            }
            case LAErrorPasscodeNotSet:
            {
                NSLog(@"A passcode has not been set");
                break;
            }
            default:
            {
                NSLog(@"TouchID not available");
                break;
            }
        }
        
        NSLog(@"%@",err.localizedDescription);
    }
}



//MARK: - 判断是否支持指纹解锁
- (void)evaluateAuthenticate
{
    //创建LAContext
    LAContext *context = [LAContext new];
    //这个属性是设置指纹输入失败之后的弹出框的选项
    context.localizedFallbackTitle = @"没有忘记密码";
    
    NSError *error = nil;
    if ([context canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:&error]) {
        NSLog(@"支持指纹识别");
        [context evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics localizedReason:@"请按home键指纹解锁" reply:^(BOOL success, NSError * _Nullable error) {
            if (success) {
                NSLog(@"验证成功 刷新主界面");
            }else{
                NSLog(@"%@",error.localizedDescription);
                switch (error.code) {
                    case LAErrorSystemCancel:
                    {
                        NSLog(@"系统取消授权，如其他APP切入");
                        break;
                    }
                    case LAErrorUserCancel:
                    {
                        NSLog(@"用户取消验证Touch ID");
                        break;
                    }
                    case LAErrorAuthenticationFailed:
                    {
                        NSLog(@"授权失败");
                        break;
                    }
                    case LAErrorPasscodeNotSet:
                    {
                        NSLog(@"系统未设置密码");
                        break;
                    }
                    case LAErrorTouchIDNotAvailable:
                    {
                        NSLog(@"设备Touch ID不可用，例如未打开");
                        break;
                    }
                    case LAErrorTouchIDNotEnrolled:
                    {
                        NSLog(@"设备Touch ID不可用，用户未录入");
                        break;
                    }
                    case LAErrorUserFallback:
                    {
                        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                            NSLog(@"用户选择输入密码，切换主线程处理");
                        }];
                        break;
                    }
                    default:
                    {
                        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
                            NSLog(@"其他情况，切换主线程处理");
                        }];
                        break;
                    }
                }
            }
        }];
    }else{
        NSLog(@"不支持指纹识别");
        switch (error.code) {
            case LAErrorTouchIDNotEnrolled:
            {
                NSLog(@"TouchID is not enrolled");
                break;
            }
            case LAErrorPasscodeNotSet:
            {
                NSLog(@"A passcode has not been set");
                break;
            }
            default:
            {
                NSLog(@"TouchID not available");
                break;
            }
        }
        
        NSLog(@"%@",error.localizedDescription);
    }

}





























@end
