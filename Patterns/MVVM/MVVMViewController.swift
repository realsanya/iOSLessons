//
//  MVVMViewController.swift
//  Patterns
//
//  Created by Student 6 on 12/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import UIKit

class MVVMViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: ViewModelDelegate? {
        didSet{
            viewModel?.textDidChandedHandler = { [weak self] text in
                self?.textLabel.text = text
            }
        }
    }
    var text: String = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func actionButtonDidPressed(_ sender: Any) {
        viewModel?.obtainNumbers()
    }
}
