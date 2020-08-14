//
//  ViewModel.swift
//  Patterns
//
//  Created by Student 6 on 12/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import Foundation

protocol ViewModelDelegate{
    
    var text: String { get set }
    
    var textDidChandedHandler: ((String) -> Void)? { get set}
    
    func obtainNumbers()
}

class ViewModel: ViewModelDelegate{
    
    var dataManager: DataManager!
    
    var text: String = "" {
        didSet{
            textDidChandedHandler?(text)
        }
    }
    
    var textDidChandedHandler: ((String) -> Void)?
    
    func obtainNumbers() {
         let numbers = dataManager.obtainNumbers()
         
        text = numbers.map({"\($0)"}).joined(separator: ", ")

    }
}
