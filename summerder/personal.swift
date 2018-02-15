
//
//  personal.swift
//  summerder
//
//  Created by Satoshi Komatsu on 2017/07/05.
//  Copyright © 2017年 Satoshi Komatsu. All rights reserved.
//

import UIKit

class personal: UIViewController {
    
    var passedNumber :Int = 0
    var divider : Int = 0
    var checker : Int = 0
    
    @IBOutlet weak var name1: UILabel!
    @IBOutlet weak var name2: UILabel!
    @IBOutlet weak var pic1: UIImageView!
    @IBOutlet weak var pic2: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        switch passedNumber {
        case 1:
            name1.text = "とし"
            name2.text = "ひめ"
            pic1.image = UIImage(named: "tosh.JPG")
            pic2.image = UIImage(named:"hime.jpg")
            
        case 2:
            name1.text = "さえ"
            name2.text = "りぃり"
            pic1.image = UIImage(named:"sae.jpg")
            pic2.image = UIImage(named:"riri.jpg")
        case 3:
            name1.text = "ひとちゃん"
            name2.text = "ほりえり"
            pic1.image = UIImage(named:"hitoho.jpg")
            pic2.image = UIImage(named:"hori.jpg")
        case 4:
            name1.text = "もる"
            name2.text = "もえか"
            pic1.image = UIImage(named:"moru.jpg")
            pic2.image = UIImage(named:"moeka.jpg")
        case 5:
            name1.text = "えみりぃ"
            name2.text = "もき"
            pic1.image = UIImage(named:"emili.jpg")
            pic2.image = UIImage(named:"moki.jpg")
        case 6:
            name1.text = "うーちゃん"
            name2.text = "えりか"
            pic1.image = UIImage(named:"uzaki.jpg")
            pic2.image = UIImage(named: "erika.PNG")
        case 7:
            name1.text = "よう"
            name2.text = "あんな"
            pic1.image = UIImage(named:"yo.jpg")
            pic2.image = UIImage(named:"anna.jpg")
        
        default:
            break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func button1(_ sender: Any) {
        divider = 1
        checker = passedNumber + divider*10
        self.performSegue(withIdentifier: "poster", sender: nil)
    }
    
    @IBAction func button2(_ sender: Any) {
        divider = 2
        checker = passedNumber + divider*10
        self.performSegue(withIdentifier: "poster", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let post = segue.destination as! post
        post.identifier = checker
    }
    
    
    
}
