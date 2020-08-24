//
//  ViewController.swift
//  CustomAlert
//
//  Created by Student 6 on 24/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lightAlertButton: UIButton!
    @IBOutlet var darkAlertButton: UIButton!
    @IBOutlet var alertWithThreeButtons: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func lightAlertAction() {
        showLightAlert()
    }
    
    @IBAction func darkAlertAction() {
        showDarkAlert()
    }
    
    @IBAction func alertWithThreeButtonsAction() {
        showAlertWithThreeButtons()
    }
    
    func showLightAlert() {
        let yesAction = Action(with: "Yes", style: .normal) {[weak self] in
            print("Yes pressed")
            self?.dismiss(animated: true, completion: nil)
        }
        
        let noAction = Action(with: "No", style: .normal) { [weak self] in
            print("No pressed")
            self?.dismiss(animated: true, completion: nil)
        }
        
        let alertVC = createLightAlertWithActions(actions: [yesAction, noAction])
        alertVC.modalPresentationStyle = .overCurrentContext
        alertVC.modalTransitionStyle = .crossDissolve
        present(alertVC, animated: true, completion: nil)
    
    }
    
    func showDarkAlert() {
        let yesAction = Action(with: "Yes", style: .normalDark) {[weak self] in
                print("Yes pressed")
                self?.dismiss(animated: true, completion: nil)
            }
            
            let noAction = Action(with: "No", style: .normalDark) { [weak self] in
                print("No pressed")
                self?.dismiss(animated: true, completion: nil)
            }
            
            let alertVC = createDarkAlertWithActions(actions: [yesAction, noAction])
            alertVC.modalPresentationStyle = .overCurrentContext
            alertVC.modalTransitionStyle = .crossDissolve
            present(alertVC, animated: true, completion: nil)
        
    }
    
    func showAlertWithThreeButtons(){
        let yesAction = Action(with: "Yes", style: .normal) {[weak self] in
            print("Yes pressed")
            self?.dismiss(animated: true, completion: nil)
        }
        
        let maybeAction = Action(with: "Maybe", style: .normal) { [weak self] in
            print("Maybe pressed")
            self?.dismiss(animated: true, completion: nil)
        }
        
        let noAction = Action(with: "No", style: .normal) { [weak self] in
            print("No pressed")
            self?.dismiss(animated: true, completion: nil)
        }
        
        let alertVC = createAlertWithThreeActions(actions: [yesAction, maybeAction, noAction])
        alertVC.modalPresentationStyle = .overCurrentContext
        alertVC.modalTransitionStyle = .crossDissolve
        present(alertVC, animated: true, completion: nil)
    }
    
    private func createLightAlertWithActions(actions: [Action]) -> CustomAlertViewController{
        let alertVC = CustomAlertViewController(withTitle: "Hi! I'm Light Alert", message:"Do you like how I look?", actions: actions, axis: .horizontal)
        return alertVC
    }
    
    private func createDarkAlertWithActions(actions: [Action]) -> CustomAlertViewController{
        let alertVC = CustomAlertViewController(withTitle: "Hi! I'm Dark Alert", message:"Do you like how I look?", actions: actions, axis: .horizontal)
        return alertVC
    }
    
    private func createAlertWithThreeActions(actions: [Action]) -> CustomAlertViewController{
          let alertVC = CustomAlertViewController(withTitle: "Hi! I'm Alert With Three Buttons", message:"Do you like how I look?", actions: actions, axis: .vertical)
          return alertVC
      }
    
}

