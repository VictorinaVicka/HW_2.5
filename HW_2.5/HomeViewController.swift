//
//  HomeViewController.swift
//  HW_2.5
//
//  Created by Виктория Воробьева on 02/10/2019.
//  Copyright © 2019 Виктория Воробьева. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet var dataEntryResult: UILabel!
    @IBOutlet var resetButton: UIButton!
    
    var userName: String!
    
    private let primaryColor = UIColor(
           red: 210/255,
           green: 109/255,
           blue: 128/255,
           alpha: 1
       )
       private let secondaryColor = UIColor(
           red: 107/255,
           green: 148/255,
           blue: 230/255,
           alpha: 1
       )
    
    override func viewDidLoad() {
           super.viewDidLoad()
           updateText()
       }
    
    private func updateText() {
        dataEntryResult.text = "Welcome home!"
        resetButton.setTitle("Close", for: .normal)
        addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
}

extension HomeViewController {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = view.bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        view.layer.insertSublayer(gradient, at: 0)
    }
}
