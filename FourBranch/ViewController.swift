//
//  ViewController.swift
//  FourBranch
//
//  Created by Beibei Lu on 2/25/18.
//  Copyright © 2018 Beibei Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var test: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        let helper = Helper()
        self.test.text = helper.getTenGod(firstTG: .Jia, secondTG: .Ding).description

        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

