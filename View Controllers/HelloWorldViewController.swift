//
//  HelloWorldViewController.swift
//  Notifications Project
//
//  Created by macbook on 11/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class HelloWorldViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addObservers()
    }
    

    // Changing background color
    func addObservers() {
        NotificationCenter.default.addObserver(self, selector: #selector(changeToRed), name: .red, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(changeToBlue), name: .blue, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(changeToGreen), name: .green, object: nil)
    }
    
    @objc private func changeToRed() {
        view.backgroundColor = .red
    }
    @objc private func changeToBlue() {
        view.backgroundColor = .blue
    }
    @objc private func changeToGreen() {
        view.backgroundColor = .green
    }
}
