//
//  ViewController.m
//  ChainableAlert-OC
//
//  Created by admin on 16/8/12.
//  Copyright © 2016年 Ding. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+ZRDChainableAlert.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)showAlert:(id)sender {
    
    [self alert:@"Title" message:@"message"]
    .configTextField(^(UITextField *textField) {
        textField.placeholder = @"UserName";
    })
    .configTextField(^(UITextField *textField) {
        textField.placeholder = @"Password";
        textField.secureTextEntry = YES;
    })
    .normalButton(@"Login")
    .handler(^(ZRDChainableAlert *alert) {
        NSArray *textFields = alert.textFields;
        NSLog(@"\nUsername:%@\nPassword:%@", [textFields[0] text], [textFields[1] text]);
    })
    .cancelButton(@"cancel")
    .show
    .animated(YES)
    .completion(nil);
    
    
    /* Another example */
    
    /*
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
    .show
    .animated(YES)
    .completion(nil);
     */
    
}
@end
