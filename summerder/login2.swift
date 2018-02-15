//
//  login2.swift
//  summerder
//
//  Created by Satoshi Komatsu on 2017/08/05.
//  Copyright © 2017年 Satoshi Komatsu. All rights reserved.
//

import UIKit
import LocalAuthentication

class login2: UIViewController {
    
    @IBOutlet weak var passCode: UITextField!
    
    var pass: String?
    
    
    
    @IBAction func enterkey(_ sender: Any) {
        pass = passCode.text
        
        if pass == "summer" {
            
            passCode.text = ""
            self.movement()
        }
        
    }
    
    @IBAction func touchID(_ sender: Any) {
        let context = LAContext();
        var error : NSError?
        //checking if the device can use the Touch ID
        if context.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: &error){
            //if so, ask it to use the Touch ID
            context.evaluatePolicy(
                LAPolicy.deviceOwnerAuthenticationWithBiometrics,
                localizedReason: "Touch ID",
                reply: {
                    success, error in
                    if (success) {
                        //指紋認証成功
                        NSLog("Success")
                        //                        self.performSegue(withIdentifier: "logining", sender: nil)
                        self.movement()
                    } else {
                        //指紋認証失敗
                        NSLog("Error")
                    }
            })
        } else {
            //no Touch ID
            NSLog("An Error Occured: ￥(Error)")
        }
        
    }
    
    func movement(){
        self.performSegue(withIdentifier: "logining2", sender: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
