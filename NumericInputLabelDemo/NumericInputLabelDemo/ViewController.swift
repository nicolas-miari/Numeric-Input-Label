//
//  ViewController.swift
//  NumericInputLabelDemo
//
//  Created by Nicolás Miari on 2019/08/07.
//  Copyright © 2019 Nicolás Miari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private(set) weak var label: NumericInputLabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        label.delegate = self
    }
}
extension ViewController: NumericInputLabelDelegate {
    func numericInputLabel(_ label: NumericInputLabel, shouldChangeToText newText: String) -> Bool {
        let numericValue = Int(newText) ?? 0

        if numericValue > 100_000 {
            return false
        }

        return true
    }
}

