# ChainableAlert-OC
Chainable usage of Alert.<br>
---
We have a helper named ZRDChainableAlert, and a category of UIViewController to add chainable usage of alert.<br>
If the device is below iOS 8, UIAlertView or UIActionSheet will be used, else, UIAlertController will be used.<br>
Usage:
---
in view controller:
```

#import "UIViewController+ZRDChainableAlert.h"
```
```
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

```
or
```

```
Pod supported:
```
target 'YourTarget' do
pod 'ChainableAlert-OC'
end
```
You can find a Swift version [HERE](https://github.com/DingHub/ChainableAlert)
