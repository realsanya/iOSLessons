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
        let customLightAlert = CustomAlertViewController(withTitle: "Hi! I'm Light Alert", message:"Do you like how I look?", axis: .horizontal, style: .light)
        customLightAlert.addAction(with: "Yes", style: .positiveDark)
        customLightAlert.addAction(with: "No", style: .destructiveDark)
        
        customLightAlert.modalPresentationStyle = .overCurrentContext
        customLightAlert.modalTransitionStyle = .crossDissolve
        present(customLightAlert, animated: true, completion: nil)
    }
    
    func showDarkAlert() {
        let customDarkAlert = CustomAlertViewController(withTitle: "Hi! I'm Dark Alert", message:"Do you like how I look?", axis: .horizontal, style: .dark)
        customDarkAlert.addAction(with: "Yes", style: .positive)
        customDarkAlert.addAction(with: "No", style: .destructive)
        
        customDarkAlert.modalPresentationStyle = .overCurrentContext
        customDarkAlert.modalTransitionStyle = .crossDissolve
        present(customDarkAlert, animated: true, completion: nil)
    }
    
    func showAlertWithThreeButtons(){
        let customAlertWithThreeButtons = CustomAlertViewController(withTitle: "Hi! I'm Alert With Three Buttons", message:"Do you like how I look?", axis: .vertical, style: .light)
        customAlertWithThreeButtons.addAction(with: "Yes", style: .positiveDark)
        customAlertWithThreeButtons.addAction(with: "Maybe", style: .normalDark)
        customAlertWithThreeButtons.addAction(with: "No", style: .destructiveDark)
        
        customAlertWithThreeButtons.modalPresentationStyle = .overCurrentContext
        customAlertWithThreeButtons.modalTransitionStyle = .crossDissolve
        present(customAlertWithThreeButtons, animated: true, completion: nil)
    }
}

