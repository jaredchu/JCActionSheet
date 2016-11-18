# JCActionSheet
Action Sheet with check mark like PodCasts app.

![JCActionSheet](https://i.stack.imgur.com/TYzUcl.jpg "Screenshot")
![JCActionSheet](https://i.stack.imgur.com/bS5FIl.png "Screenshot")

##Usage in Swift:
```swift
let actionSheet = JCActionSheet.init(title: nil, delegate: self, cancelButtonTitle: "Cancel", 
destructiveButtonTitle: "Delete", otherButtonTitles: ["Button 1","Button 2","Button 3"], 
textColor: UIColor.black, checkedButtonIndex:0);
        self.present(actionSheet, animated: true, completion: nil);
```

##Usage in ObjectiveC:
```objc
JCActionSheet *actionSheet = [[JCActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:@"Cancel" 
destructiveButtonTitle:nil otherButtonTitles:@[@"Button 1",@"Button 2",@"Button 3"] 
textColor:[UIColor blackColor] checkedButtonIndex:0];
    [self presentViewController:actionSheet animated:YES completion:nil];
```
