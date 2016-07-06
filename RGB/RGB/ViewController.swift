//
//  ViewController.swift
//  RGB
//
//  Created by Asavir Kalla on 7/5/16.
//  Copyright © 2016 Asavir Kalla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var grayScaleSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var grayLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        grayAction(grayScaleSlider)
    }


    @IBAction func grayAction(sender: UISlider) {
        // update sender to be UISlider, so it knows where value is coming from
        // a reference to the slider itself
        //IB stands for interface builder
        // casting value from slider to CGFloat, used for colors
        // alpha has to do with opacity, 1 is opaque
        view.backgroundColor = UIColor(white: CGFloat(sender.value), alpha: 1)
        grayLabel.text = String(format: "%.2f", sender.value)
        // getting text attribute from label
        // .2f means float 2 decimal places
        // then float is converted to string
        if sender.value >= 0.5 {
            grayLabel.textColor = UIColor(white:0, alpha: 1)
        } else {
            grayLabel.textColor = UIColor(white: 1, alpha: 1)
        }
    }

    @IBAction func RGBAction(sender: UISlider) {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha:1)
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        if redSlider.value >= 0.5 && greenSlider.value >= 0.5 && blueSlider.value >= 0.5 {
            redLabel.textColor = UIColor(white:0, alpha: 1)
            greenLabel.textColor = UIColor(white:0, alpha: 1)
            blueLabel.textColor = UIColor(white:0, alpha: 1)
        } else {
            redLabel.textColor = UIColor(white:1, alpha: 1)
            greenLabel.textColor = UIColor(white:1, alpha: 1)
            blueLabel.textColor = UIColor(white:1, alpha: 1)
        }

    }
    @IBAction func reset() {
        grayScaleSlider.value = 0.5
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        
        grayLabel.text = "0.5"
        greenLabel.text = "0.5"
        redLabel.text = "0.5"
        blueLabel.text = "0.5"
        
        view.backgroundColor = UIColor(white:0.5, alpha: 1)
        
        //making transition from reset slower
        // CATransition has to do with animations
        let transition = CATransition()
        // type of transition
        transition.type = kCATransitionFade
        // duration of transition
        transition.duration = 2
        // type of transition
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        view.layer.addAnimation(transition, forKey: nil)
    }
}

