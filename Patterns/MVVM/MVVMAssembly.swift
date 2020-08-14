//
//  MVVMAssembly.swift
//  Patterns
//
//  Created by Student 6 on 12/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import Foundation
import UIKit

class MVVMAssembly: NSObject {
    
     @IBOutlet weak var viewController: UIViewController!
       
       override func awakeFromNib() {
           //этот метод вызывается только тогда, когда мы инициализурем какой-то UI объект через сториборд или xib
           super.awakeFromNib()
           
           guard let view = viewController as? MVVMViewController else {
               return
           }
           
           let viewModel = ViewModel()
           let dataManager = DataManagerImplementation()
           
           view.viewModel = viewModel
           viewModel.dataManager = dataManager
       }
}
