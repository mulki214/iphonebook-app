//
//  AddController.swift
//  iphonebook
//
//  Created by Mulki Febrianto on 9/29/17.
//  Copyright © 2017 Mulki Febrianto. All rights reserved.
//

import UIKit
import Alamofire

class AddController: UIViewController {
    
    @IBOutlet weak var nameField:UITextField!
    @IBOutlet weak var phoneField:UITextField!
    @IBOutlet weak var emailField:UITextField!
    @IBOutlet weak var igField:UITextField!
    @IBOutlet weak var waField:UITextField!
    @IBOutlet weak var fbField:UITextField!
    @IBOutlet weak var lineField:UITextField!
    @IBOutlet weak var submitRegisButton:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    func postRegister(){
        let parameters: Parameters = [
            "name":nameField.text!,
            "phone":phoneField.text!,
            "line":lineField.text!,
            "ig":igField.text!,
            "wa":waField.text!,
            "fb":fbField.text!,
            "email":emailField.text!
        ]
        
        // All three of these calls are equivalent
        Alamofire.request("https://iphonebook.au-syd.mybluemix.net/pbook/create", method: .post, parameters: parameters, encoding: URLEncoding.httpBody).responseJSON { response in
            
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Response: \(utf8Text)") // original server data as UTF8 string
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func postButtonDidClicked() {
        postRegister()
        print("postButtonDidClicked")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
