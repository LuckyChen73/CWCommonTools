

#import <Foundation/Foundation.h>

#define KCWTouchIDManager [CWTouchIDManager sharedManager]

@interface CWTouchIDManager : NSObject

typedef void(^TouchIDManagerFinnishBlock)(BOOL success, NSError *error);

//MARK: - 判断是否支持指纹解锁
- (void)evaluateAuthenticate;

/**
 * 初始化方法
 *
 *  @return return
 */
+ (instancetype)sharedManager;


/**
 *  手机是否可以使用touchid
 *
 *  @return YES 可以使用
 */
- (BOOL)validateCanUseTouchId;

/**
 *  手机是否支持使用TouchId
 */
@property(nonatomic,readonly,assign)BOOL canUseTouchId;

/**
 *    指纹验证解锁的主要方法
 *
 *  @param localizedFallbackTitle  指纹解锁
 *  @param localizedReason    指纹解锁弹出框副标题
 
 */

-(void)touchIDWithlocalizedFallbackTitle:(NSString *)localizedFallbackTitle localizedReason:(NSString*)localizedReason success:(TouchIDManagerFinnishBlock) touchBlock;

-(void)touchIDWithlocalizedReason:(NSString*)localizedReason success:(TouchIDManagerFinnishBlock) touchBlock;


@end
