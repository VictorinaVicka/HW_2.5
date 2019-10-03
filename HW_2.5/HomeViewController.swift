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
    
    override func viewDidLoad() {
           super.viewDidLoad()
           updateText()
       }
    
    private func updateText() {
        dataEntryResult.text = "Welcome home!"
        resetButton.setTitle("Close", for: .normal)
    }
}
