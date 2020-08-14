//
//  ViperViewController.swift
//  Patterns
//
//  Created by Student 6 on 12/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import UIKit

class ViperViewController: UIViewController, ViperViewInput {

    var output: ViperViewOutput!
    
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Input
    func showFormattedString(_ string: String) {
        textLabel.text = string
      }

    //MARK: - Actions
    
    @IBAction func didPressedAction(_ sender: Any) {
        output.didPressedAction()
    }
}
