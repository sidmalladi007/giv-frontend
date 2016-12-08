//
//  RegisterViewController.swift
//  Giv
//
//  Created by Akash Kejriwal on 12/8/16.
//  Copyright © 2016 Akash Kejriwal. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    let auth = Auth()
    var role = "Donor"
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var first_name: UITextField!
    @IBOutlet weak var last_name: UITextField!
    @IBOutlet var roleSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roleSwitch.addTarget(self, action: Selector(("stateChanged:")), for: UIControlEvents.valueChanged)
            // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func stateChanged(switchState: UISwitch) {
        if switchState.isOn {
            role = "Donor"
        } else {
            role = "Charity"
        }
        print(role)
    }
    
    @IBAction func buttonClicked(sender: UIButton) {
        print(role)
        print(email.text)
        print(password.text)
        print(first_name.text)
        print(last_name.text)
       
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
