//
//  Views.swift
//  Destini
//
//  Created by Dmitry Medvedev on 16.04.2023.
//

import UIKit

class Views {
    
    static let shared = Views()
    
    lazy var backgroundImage: UIImageView = {
        let element = UIImageView()
        element.image = UIImage(named: "background")
        return element
    }()
    
    lazy var verticalStack: UIStackView = {
        let element = UIStackView()
        element.axis = .vertical
        element.spacing = 20
        element.distribution = .fillProportionally
        return element
    }()
    
    lazy var storyLabel: UILabel = {
        let element = UILabel()
        element.text = "Story label."
        element.numberOfLines = 0
        element.textAlignment = .left
        element.font = UIFont.systemFont(ofSize: 25)
        element.textColor = .white
        return element
    }()
    
    lazy var choice1Button: UIButton = {
        let element = UIButton()
        element.setTitle("Choice 1.", for: .normal)
        element.titleLabel?.numberOfLines = 0
        element.titleLabel?.font = UIFont.systemFont(ofSize: 23)
        element.setTitleColor(.white, for: .normal)
        element.setBackgroundImage(UIImage(named: "choice1Background"), for: .normal)
        element.layer.cornerRadius = 20
        element.layer.masksToBounds = true
        return element
    }()

    lazy var choice2Button: UIButton = {
        let element = UIButton()
        element.setTitle("Choice 2.", for: .normal)
        element.titleLabel?.numberOfLines = 0
        element.titleLabel?.font = UIFont.systemFont(ofSize: 23)
        element.setTitleColor(.white, for: .normal)
        element.setBackgroundImage(UIImage(named: "choice2Background"), for: .normal)
        element.layer.cornerRadius = 20
        element.layer.masksToBounds = true
        return element
    }()
}

