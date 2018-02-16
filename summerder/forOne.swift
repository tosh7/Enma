
//
//  forOne.swift
//  summerder
//
//  Created by satoshi komatsu on 7/7/17.
//  Copyright © 2017 Satoshi Komatsu. All rights reserved.
//

import UIKit

class forOne: UIViewController {
    
    var passedNumber: Int = 0
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var pic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if passedNumber == 1{
            name.text = "れいれい"
            pic.image = UIImage(named: "reirei.JPG")
        } else if passedNumber == 2{
            name.text = "ぴよ"
            pic.image = UIImage(named: "takk.jpg")
        }
    }

    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func button(_ sender: Any) {
        self.performSegue(withIdentifier: "posting", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let post = segue.destination as! post
        post.identifier = passedNumber
    }
}
