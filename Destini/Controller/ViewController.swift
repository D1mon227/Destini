//
//  ViewController.swift
//  Destini
//
//  Created by Dmitry Medvedev on 16.04.2023.
//

import UIKit
import SnapKit
import SwiftUI

class ViewController: UIViewController {
    
    private let views = Views.shared
    private var storyBrain = StoryBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        addConstraints()
        buttonsTargets()
        storyBrain.updateCurrentStory()
    }
    
    private func buttonsTargets() {
        views.choice1Button.addTarget(self, action: #selector(buttonsActions), for: .touchUpInside)
        views.choice2Button.addTarget(self, action: #selector(buttonsActions), for: .touchUpInside)
    }

    @objc private func buttonsActions(sender: UIButton) {
        storyBrain.checkAnswers(sender: sender)
    }
    
}

extension ViewController {
    private func addViews() {
        view.addSubview(views.backgroundImage)
        view.addSubview(views.verticalStack)
        views.verticalStack.addArrangedSubview(views.storyLabel)
        views.verticalStack.addArrangedSubview(views.choice1Button)
        views.verticalStack.addArrangedSubview(views.choice2Button)
    }
    
    private func addConstraints() {
        views.backgroundImage.snp.makeConstraints { make in
            make.top.bottom.leading.trailing.equalToSuperview()
        }
        
        views.verticalStack.snp.makeConstraints { make in
            make.top.bottom.equalTo(view.safeAreaLayoutGuide)
            make.leading.equalTo(view.snp.leadingMargin)
            make.trailing.equalTo(view.snp.trailingMargin)
        }
        
        views.choice1Button.snp.makeConstraints { make in
            make.height.equalTo(100)
        }
        
        views.choice2Button.snp.makeConstraints { make in
            make.height.equalTo(100)
        }
    }
}
