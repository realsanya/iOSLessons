//
//  CustomAlertViewController.swift
//  CustomAlert
//
//  Created by Student 6 on 24/08/2020.
//  Copyright © 2020 Student 6. All rights reserved.
//

import UIKit

//MARK: -AlertStyle
enum AlertStyle{
    case light
    case dark
    
    var backgroundColor: UIColor {
        switch self {
        case .light:
            return UIColor.white
        case .dark:
            return UIColor.black.withAlphaComponent(0.8)
        }
    }
    
    var textColor: UIColor {
        switch self {
        case .light:
            return UIColor.black
        case.dark:
            return UIColor.white
        }
    }
}

//MARK: -

class CustomAlertViewController: UIViewController {
    
    public var alertTitle: String!
    public var alertMessage: String!
    public var axis: NSLayoutConstraint.Axis = .horizontal
    private var actions = [Action]()
    public var alertStyle = AlertStyle.light
    
    private lazy var backdropView: UIView = {
        let view = BackdropView(frame: .null, backgroundColor: UIColor.black.withAlphaComponent(0.0), cornerRadius: 0.0)
        return view
    } ()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textColor =  alertStyle.textColor
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 17.0)
        return label
    }()

    private lazy var messageLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.textColor =  alertStyle.textColor
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 15.0)
        return label
    }()
    
    private lazy var titleStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 5.0
        stackView.alignment = .fill
        stackView.distribution = .fillProportionally
        return stackView
    }()

    private lazy var actionsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = self.axis
        stackView.spacing = 10.0
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = alertStyle.backgroundColor
        view.layer.cornerRadius = 10.0
        return view
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        containerView.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
        perform(#selector(animateAlert), with: self, afterDelay: 0.2)
    }
    
    
    // MARK: -initialize the alert
    init(withTitle title: String?, message: String?, axis: NSLayoutConstraint.Axis, style: AlertStyle = .light ){
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.alertMessage = message
        self.axis = axis
        self.alertStyle = style
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addAction(with text: String, style: ActionStyle){
         let action = Action(with: text, style: style) {[weak self] in
             print("Button \"\(text)\" pressed")
         self?.dismiss(animated: true, completion: nil)
         }
         actions.append(action)
     }
    
//MARK: -
    @objc private func animateAlert(){
        backdropView.alpha = 0.0
        UIView.animate(withDuration: 0.1, animations: {
            self.backdropView.alpha = 0.1
            self.backdropView.backgroundColor = UIColor.black.withAlphaComponent(0.6)
            self.containerView.transform = .identity
        })
    }
    
    private func setUpUI(){
        self.view.addSubview(backdropView)
        self.view.addSubview(containerView)
        containerView.addSubview(titleStackView)
        containerView.addSubview(actionsStackView)
        
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 24),
            containerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -24),
        
            titleStackView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 24.0),
            titleStackView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 24.0),
            titleStackView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -24.0),
        
            backdropView.topAnchor.constraint(equalTo: view.topAnchor),
            backdropView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            backdropView.leftAnchor.constraint(equalTo: view.leftAnchor),
            backdropView.rightAnchor.constraint(equalTo: view.rightAnchor),
            
            actionsStackView.topAnchor.constraint(equalTo: titleStackView.bottomAnchor, constant: 8.0),
            actionsStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -24.0),
            actionsStackView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 24.0),
            actionsStackView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: -24.0)
        ])
        
        for action in actions {
            let actionButton = ActionButton(withAction: action)
            actionButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
            actionsStackView.addArrangedSubview(actionButton)
        }
        
        titleLabel.text = alertTitle
        messageLabel.text = alertMessage
        
        titleLabel.isHighlighted = alertTitle != nil ? false : true
        messageLabel.isHighlighted = alertMessage != nil ? false : true
        
        titleStackView.addArrangedSubview(titleLabel)
        titleStackView.addArrangedSubview(messageLabel)
    }
}
