//
//  ViewController.swift
//  Ad Libs Generation
//
//  Created by Stephen DeStefano on 8/6/15.
//  Copyright © 2015 Stephen DeStefano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var textFields: [UITextField]!
    
@IBOutlet weak var pastTenseVerbTextField: UITextField!
@IBOutlet weak var singularNounTextField: UITextField!
@IBOutlet weak var pluralNounTextField: UITextField!
@IBOutlet weak var phraseTextField: UITextField!
@IBOutlet weak var locationSegmentControl: UISegmentedControl!
@IBOutlet weak var sliderLabel: UILabel!
@IBOutlet weak var numberSlider: UISlider!
@IBOutlet weak var createLibsPressed: UIButton!
@IBOutlet weak var finishedSentence: UITextView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFields = [pastTenseVerbTextField, singularNounTextField, pluralNounTextField, phraseTextField]
        
        createLibsPressed.layer.cornerRadius = 15
       
    }

    
    @IBAction func buttonPressed(sender: AnyObject) {
        var location = ""
        
        if locationSegmentControl.selectedSegmentIndex == 0 {
            location = "mall"
        } else if locationSegmentControl.selectedSegmentIndex == 1 {
            location = "library"
        } else {
            location = "restaurant"
        }
        
        finishedSentence.text = "One evening, at the \(location) a \(singularNounTextField.text!)  \(pastTenseVerbTextField.text!) \(sliderLabel.text!) \(pluralNounTextField.text!) and said, \(phraseTextField.text!)"
        finishedSentence.backgroundColor = UIColor.yellowColor()
    }


    @IBAction func sliderValueChanged(sender: UISlider) {
         sliderLabel.text = "\(Int(numberSlider.value))"
    }
    
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        let arrayOfTextFields = textFields as NSArray
        let arrayIndex = arrayOfTextFields.indexOfObject(textField)
        
        if arrayIndex < arrayOfTextFields.count - 1 {
        let newTextField = arrayOfTextFields[arrayIndex + 1] as! UITextField
            newTextField.becomeFirstResponder()
        let doneTextField = arrayOfTextFields[arrayIndex] as! UITextField
            doneTextField.backgroundColor = UIColor.yellowColor()
        } else {
            textField.resignFirstResponder()
            textField.backgroundColor = UIColor.yellowColor()
        }
        return true

    }
}











