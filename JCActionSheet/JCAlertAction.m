//
//  JCAlertAction.m
//  JCActionSheetController
//
//  Created by Chu Manh Hien on 11/17/16.
//  Copyright © 2016 VMCSOFT. All rights reserved.
//

#import "JCAlertAction.h"

@implementation JCAlertAction

+ (instancetype)actionWithTitle:(nullable NSString *)title style:(UIAlertActionStyle)style handler:(void (^ __nullable)(UIAlertAction *action))handler color:(UIColor *)color isChecked:(BOOL)checked{
    UIAlertAction *button = [UIAlertAction actionWithTitle:title style:style handler:handler];
    [button setValue:color forKey:@"titleTextColor"];
    [button setValue:color forKey:@"imageTintColor"];
    [button setValue:[NSNumber numberWithBool:checked] forKey:@"checked"];
    
    return button;
}

@end
