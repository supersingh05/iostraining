//
//  ViewController.swift
//  fun with animation
//
//  Created by Asavir Kalla on 7/13/16.
//  Copyright © 2016 Asavir Kalla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startStopAnimating: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    //image arrays
    let frames: [String] = ["frame1.png","frame2.png","frame3.png","frame4.png","frame5.png","frame6.png","frame7.png"]
    let swan: [String] = ["swanFrame1", "swanFrame2", "swanFrame3"]
    let swirl: [String] = ["swirlFrame1", "swirlFrame2", "swirlFrame3"]
    let starryNight: [String] = ["starryNight1","starryNight2","starryNight3"]
    let doveWithBranch: [String] = ["doveWithBranch1", "doveWithBranch2", "doveWithBranch3"]
    let tanCandles: [String] = ["tanCandles1", "tanCandles2", "tanCandles3", "tanCandles4"]
    let buddhaFloat: [String] = ["buddhaFloat1", "buddhaFloat2", "buddhaFloat3", "buddhaFloat4", "buddhaFloat5", "buddhaFloat6"]
    
    //times variables
    var timer = NSTimer()
    var isAnimating = true
    var counter = 1
    var arrayIndex = 0
    var pauseCheck = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomizedFuncs()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startStopAnimateButton(sender: AnyObject) {
        if isAnimating == true {
            timer.invalidate()
            startStopAnimating.setTitle("Animate", forState: UIControlState.Normal)
            counter = 0
            isAnimating = false
        } else {
            startStopAnimating.setTitle("Stop Animating", forState: UIControlState.Normal)
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.pauseCheckFunc), userInfo: nil, repeats: true)
            isAnimating = true
        }
    }
    
    func framesFunc() {
        if arrayIndex == frames.count-1 {
            arrayIndex = 0
        } else {
            arrayIndex+=1
        }
        imageView.image = UIImage(named: frames[arrayIndex])
        counter+=1
        pauseCheck = 1
        if counter == 50 {
            arrayIndex = 0
            timer.invalidate()
            isAnimating = false
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.swanFunc), userInfo: nil, repeats: true)
        }
    }

    func swanFunc() {
        if arrayIndex == swan.count-1 {
            arrayIndex = 0
        } else {
            arrayIndex+=1
        }
        imageView.image = UIImage(named: swan[arrayIndex])
        counter+=1
        pauseCheck = 2
        if counter == 50 {
            arrayIndex = 0
            timer.invalidate()
            isAnimating = false
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.swirlFunc), userInfo: nil, repeats: true)
        }
    }
    
    func swirlFunc() {
        if arrayIndex == swirl.count-1 {
            arrayIndex = 0
        } else {
            arrayIndex+=1
        }
        imageView.image = UIImage(named: swirl[arrayIndex])
        counter+=1
        pauseCheck = 3
        if counter == 50 {
            arrayIndex = 0
            timer.invalidate()
            isAnimating = false
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.starryNightFunc), userInfo: nil, repeats: true)
        }
    }
    
    func starryNightFunc() {
        if arrayIndex == starryNight.count-1 {
            arrayIndex = 0
        } else {
            arrayIndex+=1
        }
        imageView.image = UIImage(named: starryNight[arrayIndex])
        counter+=1
        pauseCheck = 4
        if counter == 50 {
            arrayIndex = 0
            timer.invalidate()
            isAnimating = false
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.doveWithBranchFunc), userInfo: nil, repeats: true)
        }
    }

    func doveWithBranchFunc() {
        if arrayIndex == doveWithBranch.count-1 {
            arrayIndex = 0
        } else {
            arrayIndex++
        }
        imageView.image = UIImage(named: doveWithBranch[arrayIndex])
        counter+=1
        pauseCheck = 5
        if counter == 50 {
            arrayIndex = 0
            timer.invalidate()
            isAnimating = false
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.tanCandlesFunc), userInfo: nil, repeats: true)
        }
    }

    func tanCandlesFunc() {
        if arrayIndex == tanCandles.count-1 {
            arrayIndex = 0
        } else {
            arrayIndex+=1
        }
        imageView.image = UIImage(named: tanCandles[arrayIndex])
        counter+=1
        pauseCheck = 6
        if counter == 50 {
            arrayIndex = 0
            timer.invalidate()
            isAnimating = false
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.buddhaFloatFunc), userInfo: nil, repeats: true)
        }
    }
    
    func buddhaFloatFunc() {
        if arrayIndex == buddhaFloat.count-1 {
            arrayIndex = 0
        } else {
            arrayIndex+=1
        }
        imageView.image = UIImage(named: buddhaFloat[arrayIndex])
        counter+=1
        pauseCheck = 7
        if counter == 50 {
            arrayIndex = 0
            timer.invalidate()
            isAnimating = false
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.framesFunc), userInfo: nil, repeats: true)
        }
    }
    
    func pauseCheckFunc () {
        if pauseCheck == 1 {
            timer.invalidate()
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.framesFunc), userInfo:nil, repeats:true)
        } else if pauseCheck == 2 {
            timer.invalidate()
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.swanFunc), userInfo:nil, repeats:true)
        } else if pauseCheck == 3 {
            timer.invalidate()
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.swirlFunc), userInfo:nil, repeats:true)
        }else if pauseCheck == 4 {
            timer.invalidate()
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.starryNightFunc), userInfo:nil, repeats:true)
        }else if pauseCheck == 5 {
            timer.invalidate()
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.doveWithBranchFunc), userInfo:nil, repeats:true)
        }else if pauseCheck == 6 {
            timer.invalidate()
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.tanCandlesFunc), userInfo:nil, repeats:true)
        }else if pauseCheck == 7 {
            timer.invalidate()
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.buddhaFloatFunc), userInfo:nil, repeats:true)
        }
    }
    
    func randomizedFuncs() {
        let randomNumber = Int(arc4random_uniform(UInt32(7)))
        if randomNumber == 0 {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.swanFunc), userInfo:nil, repeats:true)
        } else if randomNumber == 1 {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.framesFunc), userInfo:nil, repeats:true)
        } else if randomNumber == 2 {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.swirlFunc), userInfo:nil, repeats:true)
        }else if randomNumber == 3 {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.starryNightFunc), userInfo:nil, repeats:true)
        }else if randomNumber == 4 {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.doveWithBranchFunc), userInfo:nil, repeats:true)
        }else if randomNumber == 5 {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.tanCandlesFunc), userInfo:nil, repeats:true)
        }else if randomNumber == 6 {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: #selector(ViewController.buddhaFloatFunc), userInfo:nil, repeats:true)
        }
        
    }

}

