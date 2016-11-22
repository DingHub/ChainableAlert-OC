# ChainableAlert-OC
Chainable usage of Alert.<br>
---
We have a helper named ZRDChainableAlert, and a category of UIViewController to add chainable usage of UIalertController.<br>

说明文档：[《探索之旅：链式语法》](http://www.swifthumb.com/thread-14991-1-1.html)

Usage:
---
in view controller:
```

#import "UIViewController+ZRDChainableAlert.h"
```
```
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

```
or an alert with textFeilds:
```
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
```
Pod supported:
```
target 'YourTarget' do
pod 'ChainableAlert-OC'
end
```
You can find a Swift version here: [ChainableAlert](https://github.com/DingHub/ChainableAlert)
