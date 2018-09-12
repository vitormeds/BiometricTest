//
//  BiometricView.swift
//  TestBiometric
//
//  Created by Vitor Mendes on 12/09/2018.
//  Copyright © 2018 br.com.sankhya.labs. All rights reserved.
//

import UIKit

class BiometricView: UIView,UITextFieldDelegate {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Identifier has not been implemeted")
    }
    
    lazy var userField: UITextField = {
        let field = UITextField()
        field.placeholder = "Usuario"
        field.delegate = self
        field.isUserInteractionEnabled = true
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    lazy var passwordField: UITextField = {
        let field = UITextField()
        field.placeholder = "Senha"
        field.delegate = self
        field.textContentType = UITextContentType.password
        field.isUserInteractionEnabled = true
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    let biometricButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.setTitle("Autenticar", for: .normal)
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = UIColor.blue
        button.layer.cornerRadius = 6
        button.clipsToBounds = true
        button.isUserInteractionEnabled = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.endEditing(true)
        return true
    }
    
    func setupViews()
    {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(userField)//adiciona a label na tela
        userField.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        userField.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        userField.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        addSubview(passwordField)//adiciona a label na tela
        passwordField.leftAnchor.constraint(equalTo: leftAnchor, constant: 16).isActive = true
        passwordField.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        passwordField.topAnchor.constraint(equalTo: userField.bottomAnchor, constant: 16).isActive = true
        
        addSubview(biometricButton)//adiciona a label na tela
        biometricButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 16).isActive = true
        biometricButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        biometricButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        biometricButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
    
}
