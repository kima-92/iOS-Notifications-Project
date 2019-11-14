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
    }

    @IBAction func blueButtonTapped(_ sender: UIButton) {
        NotificationCenter.default.post(name: .blue, object: self)
    }
    
    @IBAction func greenButtonTapped(_ sender: UIButton) {
        NotificationCenter.default.post(name: .green, object:  self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
