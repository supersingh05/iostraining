//
//  ViewController.swift
//  Ad Libs Generation
//
//  Created by Asavir Kalla on 7/10/16.
//  Copyright © 2016 Asavir Kalla. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // array of textfields, optional with force unwrap
    var textFields: [UITextField]!

    @IBOutlet weak var pasteTenseVerbTextField: UITextField!
    @IBOutlet weak var singularNounTextField: UITextField!
    @IBOutlet weak var pluralNounTextField: UITextField!
    @IBOutlet weak var phraseTextField: UITextField!
    @IBOutlet weak var locationSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var createLibsButton: UIButton!
    @IBOutlet weak var numberSlider: UISlider!
    @IBOutlet weak var finishedSentence: UITextView!
    @IBOutlet weak var silderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textFields = [pasteTenseVerbTextField, singularNounTextField, pluralNounTextField,phraseTextField]
    }

    @IBAction func buttonPressed(sender: AnyObject) {
        var location = ""
        
        if locationSegmentControl.selectedSegmentIndex == 0 {
            location = "mall"
        } else if locationSegmentControl.selectedSegmentIndex == 1 {
            location = "library"
        } else {
            location = "restraunt"
        }
        
        finishedSentence.text = "One evening, at the \(location) a \(singularNounTextField.text!) \(pasteTenseVerbTextField.text!) \(silderLabel.text!) \(pluralNounTextField.text!) and said, \(phraseTextField.text!)"
        
        
        
    }

    @IBAction func sliderValueChanged(sender: AnyObject) {
        // slider value in float, so coverting float to int to string
        silderLabel.text = "\(Int(numberSlider.value))"
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        // need to add delegate to the text fields so they respond to this function
        
        // whats going to be passed in is a textfield after done or next is clicked
        // array is set to textfields created in class, but type cast as NSArray so that we can access indexOfObject function
        let arrayOfTextFields = textFields as NSArray
        // getting index of textfield from that class array
        let arrayIndex = arrayOfTextFields.indexOfObject(textField)
        
        // checking if arrayindex in bounds of aray
        if arrayIndex < (arrayOfTextFields.count - 1) {
            let newTextField = arrayOfTextFields[arrayIndex + 1] as! UITextField
                // setting new text field to be the one in focus
                newTextField.becomeFirstResponder()
            let doneTextField = arrayOfTextFields[arrayIndex] as! UITextField
                doneTextField.backgroundColor = UIColor.yellowColor()
        } else {
            // close keyboard
            textField.resignFirstResponder()
            textField.backgroundColor = UIColor.yellowColor()
        }
        return true
        
    }

}

