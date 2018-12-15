//
//  ViewController.swift
//  TwoButtons
//
//  Created by iOS Lab on 24/09/18.
//  Copyright © 2018 IOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    
    @IBAction func f1(_ sender:Any)
    {
        label.text="It's a beautiful ,beautiful day "
    }
    
    @IBAction func f2(_ sender:Any)
    {
       label.text="It's raining cats and dogs "
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

