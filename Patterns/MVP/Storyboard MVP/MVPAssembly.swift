//
//  MVPAssembly.swift
//  Patterns
//
//  Created by Student 6 on 12/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import Foundation
import UIKit

class MVPAssembly: NSObject {
    
    @IBOutlet weak var viewController: UIViewController!
    
    override func awakeFromNib() {
        //этот метод вызывается только тогда, когда мы инициализурем какой-то UI объект через сториборд или xib
        super.awakeFromNib()
        
        guard let view = viewController as? MVPViewController else {
            return
        }
        
        let presenter = MVPPresenter()
        let dataManager = DataManagerImplementation()
        
        view.output = presenter
        presenter.view = view
        presenter.dataManager = dataManager
    }
}
