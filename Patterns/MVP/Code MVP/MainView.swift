//
//  MainView.swift
//  Patterns
//
//  Created by Student 6 on 14/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import UIKit

protocol MainViewDelegate: AnyObject {
    
    func actionDidPressed()
}

class MainView: UIView{

    weak var delegate: MainViewDelegate?
    
    lazy var textLabel: UILabel = {
        
        let label = UILabel()
        //выключаем констрейнт
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        
        return label
    } ()
    
    lazy var actionButton: UIButton = {
        
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Push me", for: .normal)
        button.addTarget(self, action: #selector(didPressedActionButton), for: .touchUpInside)
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        textLabel.text = "Hello World"
        backgroundColor = .blue
        
        addSubview(textLabel)
        addSubview(actionButton)
        
        
        //активация констрейнов
        NSLayoutConstraint.activate([
        //анкоры это системные UIKit-овые отступы, с которыми мы можем как-то взаимодействовать
                actionButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
                actionButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
                textLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -20),
                textLabel.leftAnchor.constraint(equalTo: self.leftAnchor),
                textLabel.rightAnchor.constraint(equalTo: self.rightAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc //помечаем Objective-C компилятором
    func didPressedActionButton(){
        delegate?.actionDidPressed()
    }
}
