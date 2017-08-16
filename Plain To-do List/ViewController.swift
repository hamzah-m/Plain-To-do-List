//
//  ViewController.swift
//  Plain To-do List
//
//  Created by Hamzah Mugharbil on 8/16/17.
//  Copyright © 2017 Hamzah Mugharbil. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var textOutput: UITextView!
    
    var count = 1
    var items: [String] = []
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
    
        if textInput.text! == "" {
            return
        }
        
        items.append(textInput.text!)
        textOutput.text = ""
        for item in items {
            textOutput.text.append("\(count). \(item)\n")
        }
        count += 1
        textInput.text = ""
        textInput.resignFirstResponder()
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textInput.resignFirstResponder()
        textOutput.resignFirstResponder()
        return false
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textInput.resignFirstResponder()
        textOutput.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

