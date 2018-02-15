//
//  menu.swift
//  summerder
//
//  Created by Satoshi Komatsu on 2017/07/05.
//  Copyright © 2017年 Satoshi Komatsu. All rights reserved.
//

import UIKit

class menu: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

}
