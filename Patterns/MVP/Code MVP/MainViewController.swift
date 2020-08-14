//
//  MainViewController.swift
//  Patterns
//
//  Created by Student 6 on 14/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, MainViewDelegate, PresenterInput {
    
    var output: PresenterOutput!
    var mainView = MainView()
    
    override func loadView() {
        //заменяем системную вьюху нашей вьюхой
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.delegate = self
    }
    
    func actionDidPressed() {
        mainView.textLabel.text = "Good Job!"
    }
    
    func showNumbers(_ numbers: [Int]) {
        output.didPressedAction()
    }
}
