//
//  Interactor.swift
//  Patterns
//
//  Created by Student 6 on 12/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import Foundation

class Interactor: InteractorInput {
    
    weak var output: InteractorOutput!
    
    var dataManager: DataManager!
    
    func obtainFormattedString(){
        
        let numbers = dataManager.obtainNumbers()
        
        let numbersString = numbers.map({"\($0)"}).joined(separator: ", ")
        
        output.didFinishObtainingFormattedString(numbersString)
    }
}
