//
//  ViewController.swift
//  RegisterTicTacToe
//
//  Created by Ekta Sharma on 2018-11-11.
//  Copyright © 2018 Ekta Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        ticTacToeView.isHidden = true
    }

    
    @IBOutlet weak var registerView: UIView!
    
    @IBOutlet weak var ticTacToeView: UIView!
    
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var textFieldAge: UITextField!
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBOutlet weak var displayName: UILabel!
    
    @IBOutlet weak var maleBtn: DLRadioButton!
    
    @IBOutlet weak var femaleBtn: DLRadioButton!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textFieldName.resignFirstResponder()
        textFieldAge.resignFirstResponder()
        return false
    }
    
    @IBAction func segmentControlButton(_ sender: Any) {
    if(segment.selectedSegmentIndex == 0){
            ticTacToeView.isHidden = true
            registerView.isHidden = false;
        } else {
            registerView.isHidden = true
            ticTacToeView.isHidden = false
        }
    }
    
    
    @IBAction func registerButton(_ sender: Any) {
        displayName.text = "Welcome " + textFieldName.text!
        registerView.isHidden = true
        ticTacToeView.isHidden = false
        segment.selectedSegmentIndex = 1
    }
    
    
    @IBAction func radioBtnAction(_ sender: DLRadioButton) {
        if sender.tag == 1{
            print("Male")
        }else {
            print("Female")
        }
    }
    
    
}

