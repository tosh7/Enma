//
//  ass.swift
//  summerder
//
//  Created by satoshi komatsu on 7/7/17.
//  Copyright © 2017 Satoshi Komatsu. All rights reserved.
//

import UIKit

class ass: UIViewController {
    
    var passedNumber:Int = 0

    @IBOutlet weak var p1: UIImageView!
    @IBOutlet weak var p2: UIImageView!
    @IBOutlet weak var p3: UIImageView!
    @IBOutlet weak var p4: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        p1.image = UIImage(named: "banbi.jpg")
        p2.image = UIImage(named: "koki.jpg")
        p3.image = UIImage(named: "micyu.jpg")
        p4.image = UIImage(named: "mayu.jpg")

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func b1(_ sender: Any) {
        passedNumber = 30
        self.performSegue(withIdentifier: "posted", sender: nil)
    }
    
    @IBAction func b2(_ sender: Any) {
        passedNumber = 31
        self.performSegue(withIdentifier: "posted", sender: nil)
    }
    
    @IBAction func b3(_ sender: Any) {
        passedNumber = 32
        self.performSegue(withIdentifier: "posted", sender: nil)
    }
    
    @IBAction func b4(_ sender: Any) {
        passedNumber = 33
        self.performSegue(withIdentifier: "posted", sender: nil)
    }
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let post = segue.destination as! post
        post.identifier = passedNumber
    }
    

    
}
