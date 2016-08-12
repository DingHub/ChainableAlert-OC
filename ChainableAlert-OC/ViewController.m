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
    
    [self actionSheet:@"Title" message:@"message"]
    .normalButton(@"normal1")
    .handler(^{
        NSLog(@"normal1");
    })
    .normalButton(@"normal2")
    .normalButton(@"normal3")
    .destructiveButton(@"destructive1")
    .handler (^{
        NSLog(@"destructive1");
    })
    .destructiveButton(@"destructive2")
    .cancelButton(@"cancel")
    .show()
    .animated(YES)
    .completion(nil);
    
}
@end
