//
//  ViewController.swift
//  Animal Facts
//
//  Created by Asavir Kalla on 7/10/16.
//  Copyright © 2016 Asavir Kalla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randomHeaderLabel: UILabel!
    @IBOutlet weak var crazyFactsLabel: UILabel!
    @IBOutlet weak var factsLabel: UILabel!
    @IBOutlet weak var factButton: UIButton!
    
    // banner created into story board
    // UIImageView takes a image, image stored into banner
    let banner = UIImageView(image: UIImage(named:"banner"))
    // created an instance of a UIlabel which will hold fact
    let label = UILabel()
    
    let factsForBanner = RandomFacts()
    
    
    override func viewDidLoad() {
        // this method is only called once when app starts up
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // placing banner into view
        banner.hidden = false
        banner.center.y = 325
        banner.center.x = 182
        banner.frame.size.width = 300
        banner.frame.size.height = 125
        view.addSubview(banner)
        
        
        // add fact label over banner
        label.frame = CGRect(x:0, y:0, width: banner.frame.size.width, height: banner.frame.size.height - 50)
        label.font = UIFont(name: "Baskerville-Bold", size: 17)
        label.textColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .Center
        label.numberOfLines = 0
        label.text = self.factsForBanner.factsArray[0]
        banner.addSubview(label)
//        self.label.text = self.factsForBanner.factsArray[0]
    }
    
    override func viewWillAppear(animated: Bool) {
        // called after viewdidload, it runs everytime a view appears on the screen
        super.viewWillAppear(animated)
        
        // set starting points for views
        // this brings button down on the screen
        factButton.center.y += 30.0
        factButton.alpha = 0.0
    }

    override func viewDidAppear(animated: Bool) {
        crazyFactsLabel.center.x -= view.bounds.width
        randomHeaderLabel.center.x += view.bounds.width
        // runs after views have appeared on screen
        super.viewDidAppear(animated)
        UIView.animateWithDuration(0.4, delay:0.1, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.randomHeaderLabel.center.x -= self.view.bounds.width
        }, completion: nil)
        
        UIView.animateWithDuration(0.6, delay:0.5, options: UIViewAnimationOptions.CurveEaseOut, animations: {
            self.crazyFactsLabel.center.x += self.view.bounds.width
            }, completion: nil)
        
        UIView.animateWithDuration(1.0, delay:0.5, usingSpringWithDamping: 0.3, initialSpringVelocity: 0, options: [], animations: {
            self.factButton.center.y -= 30.0
            self.factButton.alpha = 1.0
            }, completion: nil)
        
        
    }
    
    @IBAction func buttonPressed() {
        let b = self.factButton.bounds
        
        UIView.animateWithDuration(0.2, delay: 0.0, usingSpringWithDamping: 0.2, initialSpringVelocity: 3, options: [], animations: {
            // grow the fact button wider when pressed
            self.factButton.bounds = CGRect(x: b.origin.x - 20, y: b.origin.y, width: b.size.width + 30, height: b.size.height + 10)
            }, completion: {_ in
                
                self.showFact()
                // shrinking button to normal size
                self.factButton.bounds = CGRect(x: b.origin.x - 20, y: b.origin.y, width: b.size.width, height: b.size.height)
                
        })
    }
    
    func showFact() {
        UIView.animateWithDuration(0.33, delay:0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 0, options: [], animations: {
            //first move away any mesage thats over the banner by moving to the right
            self.banner.center.x += self.view.frame.width
            }, completion: {_ in
                // bring back the view to its origin pos an dmake it hidden, and then use transition to introduce the banne ron screen as if it were a new element being pu ton
                // accessing the messsageArray via our instance var "messagews" and func randomMessage and setting tet to label and hide banner and move banner off screen
                
                self.label.text = self.factsForBanner.randomFact()
                self.banner.hidden = true
                self.banner.center.x -= self.view.frame.size.width
                
                UIView.transitionWithView(self.banner, duration: 0.3, options: [.CurveEaseOut, UIViewAnimationOptions.TransitionFlipFromTop], animations: {
                    self.banner.hidden = false
                }, completion: nil)
                
        })
    }


}

