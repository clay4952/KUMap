//
//  ViewController.swift
//  HelloiPhone
//
//  Created by cscoi028 on 2017. 1. 19..
//  Copyright © 2017년 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var BuildingLabel: UILabel!
    var selectedbuilding:building?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("\(selectedbuilding?.name)")
        
        BuildingLabel.text = selectedbuilding?.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

