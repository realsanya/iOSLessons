//
//  DataManager.swift
//  Patterns
//
//  Created by Student 6 on 12/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import Foundation

protocol DataManager {
    
     func obtainNumbers() -> [Int]
}


class DataManagerImplementation: DataManager {
    
    func obtainNumbers() -> [Int] {
        return [1,2,3,4,5,6]
    }
}
