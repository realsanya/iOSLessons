//
//  ViperPresenter.swift
//  Patterns
//
//  Created by Student 6 on 12/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import Foundation

class ViperPresenter: ViperViewOutput, InteractorOutput {
    
    weak var view: ViperViewInput!
    var interactor: InteractorInput!
    var router: RouterInput!
    
    //MARK - ViewOutput
    func didPressedAction() {
           
    }
    
    //MARK - Interactor Output
    func didFinishObtainingFormattedString(_ string: String) {
        view.showFormattedString(string)
    }
    
}
