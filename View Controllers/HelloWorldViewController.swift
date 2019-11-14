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
    var color: String?
    
    override func encodeRestorableState(with coder: NSCoder) {
        defer { super.encodeRestorableState(with: coder) }
        
        
        switch view.backgroundColor {
        case UIColor.red:
            color = "red"
        case UIColor.blue:
            color = "blue"
        case UIColor.green:
            color = "green"
        default:
            color = "clear"
        }
        
        var colorData: Data?
        
        do {
            colorData = try PropertyListEncoder().encode(color)
        } catch {
            NSLog("Error encoding color \(error)")
        }
        
        guard let currentColor = colorData else { return }
        
        coder.encode(currentColor, forKey: "currentColor")
    }
    
    override func decodeRestorableState(with coder: NSCoder) {
        defer { super.decodeRestorableState(with: coder) }
        
        guard let colorData = coder.decodeObject(forKey: "currentColor") as? Data else { return }
        
        self.color = try? PropertyListDecoder().decode(String.self, from: colorData)
        
        switch color {
        case "red":
            view.backgroundColor = .red
        case "blue":
            view.backgroundColor = .blue
        case "green":
            view.backgroundColor = .green
        default:
            color = "clear"
        }
        
    }
}
