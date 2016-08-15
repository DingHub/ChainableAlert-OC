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
    .textField()
    .configrationHandler(^(UITextField *textField) {
        textField.placeholder = @"UserName";
    })
    .textField()
    .configrationHandler(^(UITextField *textField) {
        textField.placeholder = @"Password";
        textField.secureTextEntry = YES;
    })
    .normalButton(@"Login")
    .handler(^(ZRDChainableAlert *alert) {
        NSArray *textFields = alert.textFields;
        NSLog(@"Username:%@\nPassword:%@", [textFields[0] text], [textFields[1] text]);
    })
    .cancelButton(@"cancel")
    .show(self)
    .animated(YES)
    .completion(nil);

    
}
@end
