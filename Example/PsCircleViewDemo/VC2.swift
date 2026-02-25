//
//  VC2.swift
//  PsCircleViewDemo
//
//  Created by Poison on 2021/5/29.
//

import UIKit

class VC2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func swClick(_ sender: UISwitch) {
        view.backgroundColor = sender.isOn ? UIColor.gray : UIColor.black
    }

}
