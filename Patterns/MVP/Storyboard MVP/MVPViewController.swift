//
//  MVPViewController.swift
//  Patterns
//
//  Created by Student 6 on 12/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import UIKit

class MVPViewController: UIViewController, MVPViewInput{
    
    var output: MVPViewOutput! //здесь будет класс, который реализует протокол MVPOutput
    
    //напрямую к Presenter нельзя обращаться, так как это будет нарушение SOLID
    
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Input
    func showNumbers(_ numbers: [Int]) {
        let numbersString = numbers.map({"\($0)"}).joined(separator: ", ")
        textLabel.text = numbersString
      }

    //MARK: - Actions
    @IBAction func didPressedAction(_ sender: Any) {
        output.didPressedAction()
    }
    
}

