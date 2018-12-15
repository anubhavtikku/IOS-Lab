//
//  ViewController.swift
//  Scr
//
//  Created by iOS Lab on 15/10/18.
//  Copyright © 2018 IOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bl: UITextField!
    @IBOutlet weak var la: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    @IBOutlet weak var fill: UIButton!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clicke(_ sender: Any) {
        la.text="la la land"
        la.text=bl.text
        bl.text=""
        
    }
    
}

