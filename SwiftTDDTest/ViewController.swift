//
//  ViewController.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/9.
//  Copyright © 2016年 sherry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var actionString: String?
    var Action = UIAlertAction.self
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        let alertBtn = UIButton.init(frame: CGRectMake(100, 100, 100, 30))
        alertBtn.backgroundColor = UIColor.yellowColor()
        alertBtn.addTarget(self, action: #selector(alertBtnAct), forControlEvents: .TouchUpInside)
        self.view.addSubview(alertBtn)
        
    }
    
    func alertBtnAct(btn: UIButton) {
    
        let alert = UIAlertController.init(title: "TestTitle", message: "这是一个Test", preferredStyle: .Alert)
        let okAct = Action.init(title: "OK", style: .Default) { (action) in
            
            self.actionString = "OK"
            
        }

        
        let cancelAct = Action.init(title: "Cancel", style: .Cancel) { (action) in
            
            self.actionString = "Cancel"
            
        }
        
        alert.addAction(cancelAct)
        alert.addAction(okAct)
        
        presentViewController(alert, animated: true, completion: nil)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


