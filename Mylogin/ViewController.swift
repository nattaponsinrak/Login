//
//  ViewController.swift
//  Mylogin
//
//  Created by iMac15 on 6/23/2559 BE.
//  Copyright © 2559 masterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var UserTextField: UITextField!
    
    
    @IBOutlet weak var PassWordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    @IBAction func LoginButton(sender: AnyObject) {
        
        let user = UserTextField.text
        let password = PassWordTextField.text
        
        print("User ==> \(user)")
        print("pass ==> \(password)")
        
        checkSpace(user!, strPass: password!)
            
    } ///login / Button

    
    func checkSpace(strUser:String, strPass:String) -> Void{
        if ((strUser.isEmpty) || (strPass.isEmpty)) {
            print("Have Space")
            
            ////การโวยวายของฉัน Alert Dialog
            let myAlert = UIAlertController(title:"มีช่องว่าง", message:"กรุณากรอกทุกช่อง",
            preferredStyle: UIAlertControllerStyle.Alert)
            myAlert.addAction(UIAlertAction(title:"ok", style: UIAlertActionStyle.Default, handler: nil))
            
            self.presentViewController(myAlert, animated: true, completion: nil)
            
            
        } //// ห้ามมีช่องว่าง
    }
    

}

