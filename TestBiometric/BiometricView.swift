//
//  BiometricView.swift
//  TestBiometric
//
//  Created by Vitor Mendes on 12/09/2018.
//  Copyright © 2018 br.com.sankhya.labs. All rights reserved.
//

import UIKit

class BiometricView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Identifier has not been implemeted")
    }
    
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
    
    func setupViews()
    {
        translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(biometricButton)//adiciona a label na tela
        biometricButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        biometricButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        biometricButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        biometricButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
    }
    
}
