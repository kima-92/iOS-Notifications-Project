//
//  ColorsViewController.swift
//  Notifications Project
//
//  Created by macbook on 11/14/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func redButtonTapped(_ sender: UIButton) {
        NotificationCenter.default.post(name: .red, object: self)
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func blueButtonTapped(_ sender: UIButton) {
        NotificationCenter.default.post(name: .blue, object: self)
        navigationController?.popToRootViewController(animated: true)
        
    }
    
    @IBAction func greenButtonTapped(_ sender: UIButton) {
        NotificationCenter.default.post(name: .green, object:  self)
        navigationController?.popToRootViewController(animated: true)
        
    }
}
