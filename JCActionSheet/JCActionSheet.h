//
//  JCActionSheet.h
//  JCActionSheetController
//
//  Created by Chu Manh Hien on 11/18/16.
//  Copyright © 2016 VMCSOFT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JCAlertAction.h"

@class JCActionSheet;

#pragma mark - JCActionSheetDelegate
@protocol JCActionSheetDelegate <NSObject>
@optional

// Called when a button is clicked. The view will be automatically dismissed after this call returns
- (void)actionSheet:(nonnull JCActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex;

//cancel button click
- (void)actionSheetCancel:(nonnull JCActionSheet *)actionSheet;;

//detructive button click
- (void)actionSheetDetructive:(nonnull JCActionSheet *)actionSheet;;

@end

#pragma mark - JCActionSheet
@interface JCActionSheet : UIAlertController <JCActionSheetDelegate>

-(nonnull id)initWithTitle:(nullable NSString *)title delegate:(nullable id<JCActionSheetDelegate>)delegate cancelButtonTitle:(nullable NSString *)cancelButtonTitle destructiveButtonTitle:(nullable NSString *)destructiveButtonTitle otherButtonTitles:(nullable NSArray <NSString*>*)otherButtonTitles textColor:(nullable UIColor *)color checkedButtonIndex:(NSInteger)checkedButtonIndex;

@property(nullable,nonatomic,weak) id<JCActionSheetDelegate> delegate;

@property (nullable) JCAlertAction *cancelButton;
@property (nullable) JCAlertAction *destructiveButton;
@property (nullable) NSMutableArray<JCAlertAction*>* otherButtons;

@end
