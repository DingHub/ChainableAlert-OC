//
//  UIViewController+ZRDChainableAlert.h
//  ChainableAlert-OC
//
//  Created by admin on 16/8/12.
//  Copyright © 2016年 Ding. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ZRDChainableAlert.h"


/**
 *  Add chainable use to show an alert.
 
 e.g.
 
 1.
 [self actionSheet:@"Title" message:@"message"]
 .normalButton(@"normal1")
 .handler(^(ZRDChainableAlert *alert) {
    NSLog(@"normal1");
 })
 .normalButton(@"normal2")
 .normalButton(@"normal3")
 .destructiveButton(@"destructive1")
 .handler (^(ZRDChainableAlert *alert) {
    NSLog(@"destructive1");
 })
 .destructiveButton(@"destructive2")
 .cancelButton(@"cancel")
 .show()
 .animated(YES)
 .completion(nil);
 
 2.
 [self actionSheet:@"Title" message:@"message"]
 .normalButton(@"normal1")
 .handler(^(ZRDChainableAlert *alert) {
    NSLog(@"normal1");
 })
 .normalButton(@"normal2")
 .normalButton(@"normal3")
 .destructiveButton(@"destructive1")
 .handler (^(ZRDChainableAlert *alert) {
    NSLog(@"destructive1");
 })
 .destructiveButton(@"destructive2")
 .cancelButton(@"cancel")
 .show()
 .animated(YES)
 .completion(nil);
 
 */
@interface UIViewController (ZRDChainableAlert)

typedef UIViewController * (^ZRDControllerAlertButtonTitleReceiver)(NSString *);
typedef UIViewController * (^ZRDControllerAlertButtonActionReceiver)(ZRDAlertButtonAction);
typedef UIViewController * (^ZRDControllerAlertTextFieldReceiver)();
typedef UIViewController * (^ZRDControllerAlertTextFieldConfigReceiver)(ZRDAlertTextFieldConfigration);
typedef UIViewController * (^ZRDControllerAlertVoidReceiver)();
typedef UIViewController * (^ZRDControllerAlertShowAnimationReceiver)(BOOL);
typedef UIViewController * (^ZRDControllerSourceRectReceiver)(CGRect);

/**
 *  Create an alert
 */
- (instancetype)alert:(NSString *)title message:(NSString *)message;
/**
 *  Create an action sheet
 */
- (instancetype)actionSheet:(NSString *)title message:(NSString *)message;

/**
 *  Add a normal button to the alert
 */
- (ZRDControllerAlertButtonTitleReceiver)normalButton;
/**
 *  Add a destructive button to the alert
 */
- (ZRDControllerAlertButtonTitleReceiver)destructiveButton;
/**
 *  Add a cancel button to the alert, the most number of cancel button is 1
 */
- (ZRDControllerAlertButtonTitleReceiver)cancelButton;

/**
 *  Add button action
 */
- (ZRDControllerAlertButtonActionReceiver)handler;

/**
 *  Add a textField to the alert, if is action sheet, no use.
 */
- (ZRDControllerAlertTextFieldReceiver)textField;

/**
 *  Config the textField, if is action sheet, no use.
 */
- (ZRDControllerAlertTextFieldConfigReceiver)configrationHandler;

/**
 *  Actually pass self as a weak point to the alert
 */
- (ZRDControllerAlertVoidReceiver)show;

/**
 *
 */
- (ZRDControllerAlertShowAnimationReceiver)animated;

/**
 *  If is action sheet, and device is iPad, we can set the source rect for the popover controller
 */
- (ZRDControllerSourceRectReceiver)sourceRect;

/**
 *  Must be called, or the alert will not appear. Pass a block as a callback after the alert appeard, if nothing to do, just do like: completion(nil).
 */
- (ZRDCompletionReceriver)completion;

@end
