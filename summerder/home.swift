//
//  home.swift
//  summerder
//
//  Created by Satoshi Komatsu on 2017/07/05.
//  Copyright © 2017年 Satoshi Komatsu. All rights reserved.
//

import UIKit

class home: UIViewController {
    
    var number: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func hd(_ sender: Any) {
        number = 1
        self.performSegue(withIdentifier: "one", sender: nil)
    }
    
    @IBAction func ah(_ sender: Any) {
        number = 2
        self.performSegue(withIdentifier: "one", sender: nil)
    }
    
    
    @IBAction func g1(_ sender: Any) {
        number = 1
        self.performSegue(withIdentifier: "toPersonal", sender: nil)
        
    }
    
    @IBAction func g2(_ sender: Any) {
        number = 2
        self.performSegue(withIdentifier: "toPersonal", sender: nil)
    }

    @IBAction func g3(_ sender: Any) {
        number = 3
        self.performSegue(withIdentifier: "toPersonal", sender: nil)
    }
    
    @IBAction func g4(_ sender: Any) {
        number = 4
        self.performSegue(withIdentifier: "toPersonal", sender: nil)
    }
    
    @IBAction func g5(_ sender: Any) {
        number = 5
        self.performSegue(withIdentifier: "toPersonal", sender: nil)
    }
    
    @IBAction func g6(_ sender: Any) {
        number = 6
        self.performSegue(withIdentifier: "toPersonal", sender: nil)
    }
    
    @IBAction func g7(_ sender: Any) {
        number = 7
        self.performSegue(withIdentifier: "toPersonal", sender: nil)
    }
    
    
    @IBAction func ass(_ sender: Any) {
        self.performSegue(withIdentifier: "toAss", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toPersonal"{
            let personal = segue.destination as! personal
            personal.passedNumber = number
        } else if segue.identifier == "one"{
            print("1")
            let forOne = segue.destination as! forOne
            forOne.passedNumber = number
        }
    }

    
    
    
    
    
   
    
    
    
}
