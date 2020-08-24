//
//  SecondVIewController.swift
//  UIElements
//
//  Created by MAC on 8/24/20.
//  Copyright © 2020 PaulRenfrew. All rights reserved.
//

import UIKit

protocol SecondViewControllerDelegate {
  func detailText(_ text: String?)
}

class SecondViewController: UIViewController {
  
  @IBOutlet weak var detailTextField: UITextField!
  var delegate: SecondViewControllerDelegate?
  
  @IBAction func submit(_ sender: Any) {
    let textFieldText = self.detailTextField.text
    self.delegate?.detailText(textFieldText)
    self.dismiss(animated: true, completion: nil)
  }
}
