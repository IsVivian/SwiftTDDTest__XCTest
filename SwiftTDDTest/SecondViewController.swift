//
//  SecondViewController.swift
//  SwiftTDDTest
//
//  Created by sherry on 16/5/11.
//  Copyright © 2016年 sherry. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var numberSlider: UISlider!

    var numberLabel: UILabel!
    
    var percentageSlider: UISlider!
    
    var percentageLabel: UILabel!
    
    var resultLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        
        numberSlider = UISlider.init(frame: CGRectMake(10, 200, 355, 10))
        numberSlider.minimumValue = 0
        numberSlider.maximumValue = 1
        numberSlider.value = 0.5
        numberSlider.continuous = true
        numberSlider.addTarget(self, action: #selector(numberValueChanged), forControlEvents: .ValueChanged)
        self.view.addSubview(numberSlider)
        
        numberLabel = UILabel.init(frame: CGRectMake(10, 215, 100, 30))
        numberLabel.text = "50.0"
        self.view.addSubview(numberLabel)
        
        percentageSlider = UISlider.init(frame: CGRectMake(10, 300, 355, 10))
        percentageSlider.minimumValue = 0
        percentageSlider.maximumValue = 1
        percentageSlider.value = 0.5
        percentageSlider.continuous = true
        percentageSlider.addTarget(self, action: #selector(percentageValueChanged), forControlEvents: .ValueChanged)
        self.view.addSubview(percentageSlider)
        
        percentageLabel = UILabel.init(frame: CGRectMake(10, 315, 100, 30))
        percentageLabel.text = "50.0%"
        self.view.addSubview(percentageLabel)
        
        resultLabel = UILabel.init(frame: CGRectMake(150, 500, 100, 30))
        resultLabel.text = "25.0"
        self.view.addSubview(resultLabel)
        
    }
    
    func numberValueChanged(sender: AnyObject) {
        
        numberSlider.setValue(Float(Int(numberSlider.value)), animated: true)
        
        let r = percentage(numberSlider.value, percentageSlider.value)
        updateLabels(numberSlider.value, nil, r)

    }
    
    func percentageValueChanged(sender: AnyObject) {
        
        percentageSlider.setValue(Float(Int(percentageSlider.value)), animated: true)
        
        let r = percentage(numberSlider.value, percentageSlider.value)
        updateLabels(nil, percentageSlider.value, r)

    }
    
    // This will update the all the labels when one of the two sliders values has been changed.
    func updateLabels(nV: Float?, _ pV: Float?, _ rV: Float) {
        if let v = nV {
            self.numberLabel.text = "\(v)"
        }
        if let v = pV {
            self.percentageLabel.text = "\(v)%"
        }
        
        self.resultLabel.text = "\(rV)"
    }
    
    // MARK: - Percentage Calculation
    // This calculates the percentage result of two given numbers.
    func percentage(value: Float, _ percentage: Float) -> Float {
        return value * (percentage / 100)
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
