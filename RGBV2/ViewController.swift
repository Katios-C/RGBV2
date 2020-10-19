//
//  ViewController.swift
//  RGBV2
//
//  Created by Екатерина Чернова on 19.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorText: UITextField!
    @IBOutlet var windowView: UIView!
    @IBOutlet var colorVlue: UILabel!
    
    
    @IBOutlet var slider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.value = 1
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.tintColor = .red
        
       
        
    }

    @IBAction func sliderAction() {
        let currenValue = CGFloat(slider.value)
        colorVlue.text = String(slider.value)
        windowView.backgroundColor = windowView.backgroundColor?.withAlphaComponent(currenValue)
    
    }
    
}

