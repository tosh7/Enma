//
//  ViewController.swift
//  summerder
//
//  Created by Satoshi Komatsu on 2017/07/04.
//  Copyright © 2017年 Satoshi Komatsu. All rights reserved.
//

import UIKit
import NCMB



class post: UIViewController {
    
    
    @IBOutlet weak var name: UILabel!

    @IBOutlet weak var whatHeDid: UITextView!
    
    var namae: String?
    
    var kotogara: String?
    
    var identifier : Int = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        switch identifier {
        case 11:
            name.text = "とし"
        case 21:
            name.text = "ひめ"
        case 12:
            name.text = "さえ"
        case 22:
            name.text = "りぃり"
        case 13:
            name.text = "ひとちゃん"
        case 14:
            name.text = "もる"
        case 15:
            name.text = "えみりぃ"
        case 16:
            name.text = "うーちゃん"
        case 17:
            name.text = "よう"
        case 23:
            name.text = "ほりえり"
        case 24:
            name.text = "もえか"
        case 25:
            name.text = "もき"
        case 26:
            name.text = "えりか"
        case 27:
            name.text = "あんな"
        case 30:
            name.text = "ばんび"
        case 31:
            name.text = "こうき"
        case 32:
            name.text = "みっちゅ"
        case 33:
            name.text = "まゆ"
        case 1:
            name.text = "れいれい"
            
        case 2:
            name.text = "ぴよ"
            
        default:
            break
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func post(_ sender: Any) {
        namae = name.text;
        kotogara = whatHeDid.text;
        saveScore( namae!,  enma: kotogara! )
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    func saveScore(_ name: String, enma: String){
        
        let obj = NCMBObject(className: "counter")
        
        obj?.setObject(name, forKey:"name")
        obj?.setObject(enma, forKey:"enma")
        
        obj?.saveInBackground({(error) in
            if error != nil {
                let err = error! as NSError
                print("保存に失敗しましたエラーコード:\(err.code)")
            }else{
            //保存に成功した場合の処理
            print("保存に成功しました。objectId:\(String(describing: obj?.objectId))")
            }
        
        })
    
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

