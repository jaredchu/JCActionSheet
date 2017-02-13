//
//  JCAlertAction.h
//  JCActionSheetController
//
//  Created by Chu Manh Hien on 11/17/16.
//  Copyright © 2016 VMCSOFT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JCAlertAction : UIAlertAction
+ (nonnull instancetype)actionWithTitle:(nullable NSString *)title style:(UIAlertActionStyle)style handler:(void (^ __nullable)( UIAlertAction * _Nullable action))handler color:(nonnull UIColor *)color isChecked:(BOOL)checked;
@end
