//
//  MVPPresenter.swift
//  Patterns
//
//  Created by Student 6 on 12/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import Foundation

//Presenter будет дергать DataManager
class MVPPresenter: MVPViewOutput{
    
    //мы не можем написать так: let manager = DataManager(), так как у нас образуется сильная связность и мы не сможем переиспользовать модули
    
    
    weak var view: MVPViewInput! //мы скрываем с помощью протокола что за вьюха, просто какая-то вьюха, которая реализует MVPViewInput
    var dataManager: DataManager!
    
    //здесь дергаем DataManager
    func didPressedAction() {
        let numbers = dataManager.obtainNumbers()
        view.showNumbers(numbers)
    }
}
