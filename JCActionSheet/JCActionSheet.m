//
//  JCActionSheet.m
//  JCActionSheetController
//
//  Created by Chu Manh Hien on 11/18/16.
//  Copyright © 2016 VMCSOFT. All rights reserved.
//

#import "JCActionSheet.h"

@interface JCActionSheet ()

@end

@implementation JCActionSheet

-(id)initWithTitle:(NSString *)title delegate:(id<JCActionSheetDelegate>)delegate cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSArray <NSString*>*)otherButtonTitles textColor:(UIColor *)color checkedButtonIndex:(NSInteger)checkedButtonIndex{
    self = [JCActionSheet alertControllerWithTitle:title message:nil preferredStyle:UIAlertControllerStyleActionSheet];

    self.delegate = delegate;
    
    //init buttons
    if(cancelButtonTitle != nil){
        _cancelButton = [JCAlertAction actionWithTitle:cancelButtonTitle style:UIAlertActionStyleCancel handler:^(UIAlertAction *action){
            //cancel button Click
            [self.delegate actionSheetCancel:self];
        } color:color isChecked:false];
        [self addAction:_cancelButton];
    }
    
    _otherButtons = [[NSMutableArray alloc]init];
    NSInteger buttonIndex = 0;
    for (NSString *otherButtonTitle in otherButtonTitles){
        if(otherButtonTitle != nil){
            JCAlertAction *otherButton;
            if(checkedButtonIndex == buttonIndex){
                otherButton = [JCAlertAction actionWithTitle:otherButtonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
                    //button Click
                    [self.delegate actionSheet:self clickedButtonAtIndex:buttonIndex];
                } color:color isChecked:true];
            }
            else{
                otherButton = [JCAlertAction actionWithTitle:otherButtonTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
                    //button Click
                    [self.delegate actionSheet:self clickedButtonAtIndex:buttonIndex];
                } color:color isChecked:false];
            }
            [_otherButtons addObject:otherButton];
            buttonIndex++;
        }
    }
    
    for(JCAlertAction *button in _otherButtons){
        [self addAction:button];
    }
    
    if(destructiveButtonTitle != nil){
        _destructiveButton = [JCAlertAction actionWithTitle:destructiveButtonTitle style:UIAlertActionStyleDestructive handler:^(UIAlertAction *action){
            //detructive button Click
            [self.delegate actionSheetDetructive:self];
        }];
        [self addAction:_destructiveButton];
    }
    
    return self;
}
@end


