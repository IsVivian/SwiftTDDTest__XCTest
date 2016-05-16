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
    var Action = UIAlertAction.self //该变量会在我们初始化弹窗动作时使用，这就能让我们在测试可以重写它
    var alertBtn = UIButton()
    var pushBtn = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.whiteColor()
    
        
        alertBtn = UIButton.init(frame: CGRectMake(100, 100, 100, 30))
        alertBtn.backgroundColor = UIColor.yellowColor()
        alertBtn.setTitle("alertBtn", forState: .Normal)
        alertBtn.addTarget(self, action: #selector(alertBtnAct), forControlEvents: .TouchUpInside)
        self.view.addSubview(alertBtn)
        
        pushBtn = UIButton.init(frame: CGRectMake(100, 300, 100, 30))
        pushBtn.backgroundColor = UIColor.redColor()
        pushBtn.setTitle("pushBtn", forState: .Normal)
        pushBtn.addTarget(self, action: #selector(pushBtnAct), forControlEvents: .TouchUpInside)
        self.view.addSubview(pushBtn)
        
    }
    
    func alertBtnAct(btn: UIButton) {
    
        let alert = UIAlertController.init(title: "TestTitle", message: "这是一个Test", preferredStyle: .Alert)
        let okAct = Action.init(title: "OK", style: .Default) { (action) in
            
            self.actionString = "OK"
            let secondVC = SecondViewController()
            secondVC.view.backgroundColor = UIColor.whiteColor()
            self.presentViewController(secondVC, animated: true, completion: nil)
            
        }

        
        let cancelAct = Action.init(title: "Cancel", style: .Cancel) { (action) in
            
            self.actionString = "Cancel"
            
        }
        
        alert.addAction(cancelAct)
        alert.addAction(okAct)
        
        presentViewController(alert, animated: true, completion: nil)
    
    }
    
    func pushBtnAct(btn: UIButton) {
    
        let tableVC = TableViewController()
        tableVC.view.backgroundColor = UIColor.whiteColor()
        tableVC.title = "TestTableVC"
        self.presentViewController(tableVC, animated: true, completion: nil)
    
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


