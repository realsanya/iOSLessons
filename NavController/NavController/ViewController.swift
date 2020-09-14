//
//  ViewController.swift
//  NavController
//
//  Created by Student 6 on 14/09/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func pushButtonAction(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "viewControllerSID")
        navigationController?.pushViewController(newVC!, animated: true)
    }
}

