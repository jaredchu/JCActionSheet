//
//  ViewController.swift
//  JCActionSheet
//
//  Created by Chu Manh Hien on 11/17/16.
//  Copyright © 2016 VMCSOFT. All rights reserved.
//

import UIKit

class ViewController: UIViewController, JCActionSheetDelegate{
    var currentCheckedIndex = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showActionSheet(_ sender: UIButton) {
        let actionSheet = JCActionSheet.init(title: nil, delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: "Delete", otherButtonTitles: ["Button 1","Button 2","Button 3"], textColor: UIColor.black, checkedButtonIndex:self.currentCheckedIndex);
        self.present(actionSheet, animated: true, completion: nil);
    }
    
    func actionSheet(_ actionSheet: JCActionSheet, clickedButtonAt buttonIndex: Int) {
        self.currentCheckedIndex = buttonIndex;
    }
    
    func actionSheetCancel(_ actionSheet: JCActionSheet) {
        //do something with cancel action
    }
    
    func actionSheetDetructive(_ actionSheet: JCActionSheet) {
        //do something with detructive action
    }
}
