//
//  DetailViewController.swift
//  iphonebook
//
//  Created by Mulki Febrianto on 9/29/17.
//  Copyright © 2017 Mulki Febrianto. All rights reserved.
//

import UIKit
import SwiftyJSON

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameDetailField:UITextField!
    @IBOutlet weak var phoneDetailField:UITextField!
    @IBOutlet weak var emailDetailField:UITextField!
    @IBOutlet weak var igDetailField:UITextField!
    @IBOutlet weak var waDetailField:UITextField!
    @IBOutlet weak var fbDetailField:UITextField!
    @IBOutlet weak var lineDetailField:UITextField!
    
    var data:JSON!

    override func viewDidLoad() {
        super.viewDidLoad()
        print(data)
        navigationItem.title = data["name"].stringValue
        phoneDetailField.text = data["phone"].stringValue
        emailDetailField.text = data["email"].stringValue
        igDetailField.text = data["ig"].stringValue
        waDetailField.text = data["wa"].stringValue
        fbDetailField.text = data["fb"].stringValue
        lineDetailField.text = data["line"].stringValue
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
