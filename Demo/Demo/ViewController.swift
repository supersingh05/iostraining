//
//  ViewController.swift
//  Demo
//
//  Created by Asavir Kalla on 6/24/16.
//  Copyright © 2016 Asavir Kalla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label1Outlet: UILabel!
    @IBOutlet weak var openDoorOutlet: UIButton!
    @IBOutlet weak var sliderOutlet: UISlider!
    @IBOutlet weak var blueButtonOutlet: UIButton!
    @IBOutlet weak var yelloButtonOutlet: UIButton!
    @IBOutlet weak var originalBackground: UIButton!
    @IBOutlet weak var invisbilitySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func silderChanged(sender: UISlider) {
        // putting value of slider inside label value
        label1Outlet.text = String(format: "%.2f", sender.value)
    }

    @IBAction func blueBackground(sender: AnyObject) {
        view.backgroundColor = UIColor.blueColor()
    }
    
    @IBAction func yellowBackground(sender: AnyObject) {
        view.backgroundColor = UIColor.yellowColor()
    }
    
    @IBAction func originalBackground(sender: AnyObject) {
        view.backgroundColor = UIColor.lightGrayColor()
    }
    
    @IBAction func invisibleSwitch(sender: AnyObject) {
        // checking value of switch and taking action depending on value
        if invisbilitySwitch.on {
            label1Outlet.hidden = true
            openDoorOutlet.hidden = true
            sliderOutlet.hidden = true
            blueButtonOutlet.hidden = true
            yelloButtonOutlet.hidden = true
            originalBackground.hidden = true
        } else {
            label1Outlet.hidden = false
            openDoorOutlet.hidden = false
            sliderOutlet.hidden = false
            blueButtonOutlet.hidden = false
            yelloButtonOutlet.hidden = false
            originalBackground.hidden = false
        }
    }
    
}

