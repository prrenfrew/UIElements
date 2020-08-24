//
//  ViewController.swift
//  UIElements
//
//  Created by MAC on 8/24/20.
//  Copyright © 2020 PaulRenfrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var detailLabel: UILabel!
  @IBOutlet weak var theTextfield: UITextField!
  @IBOutlet weak var theSegmentedControl: UISegmentedControl!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.theTextfield.delegate = self
  }

  @IBAction func didChangeSegment(_ sender: UISegmentedControl) {
    let selectedSegment = sender.selectedSegmentIndex
    let printString = String(format: "The selected segment was %i", selectedSegment)
    print(printString)
    
  }
  
  @IBAction func switchFlipped(_ sender: UISwitch) {
    print("The switch is on? \(sender.isOn)")
  }
  @IBAction func sliderValueChanged(_ sender: UISlider) {
    print(sender.value)
  }
  @IBAction func buttonClicked(_ sender: Any) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let secondViewController = storyboard.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
    secondViewController.delegate = self
    self.present(secondViewController, animated: true, completion: nil)
  }
}

extension ViewController: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    print("The textfield has text \(textField.text)")
    textField.text = ""
    return true
  }
}

extension ViewController: SecondViewControllerDelegate {
  func detailText(_ text: String?) {
    self.detailLabel.text = text
  }
}
