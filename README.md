# ChainableAlert-OC
Chainable usage of Alert.<br>
---
We have a helper named ZRDChainableAlert, and a category of UIViewController to add chainable usage of UIalertController.<br>
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
or an laert with textFeilds:
```
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
