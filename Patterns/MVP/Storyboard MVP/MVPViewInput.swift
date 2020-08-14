//
//  MVPViewInput.swift
//  Patterns
//
//  Created by Student 6 on 12/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import Foundation

protocol MVPViewInput: AnyObject {
    //это протокол, который будет ответственен за методы, связанные с вызовом внутри вьюхи
    
    func showNumbers(_ numbers: [Int])
}
