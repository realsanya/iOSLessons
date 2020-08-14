//
//  MainModuleAssembly.swift
//  Patterns
//
//  Created by Student 6 on 14/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import Foundation
import UIKit

class MainModuleAssembly{
    //возвращает сконфигурированную вьюху
    
    class func configuredModule() -> UIViewController {
        
        let view = MainViewController()
        let presenter = MainViewPresenter()
        let dataManager = DataManagerImplementation()
        
        view.output = presenter
        presenter.view = view
        presenter.dataManager = dataManager
        
        return view 
    }
}
