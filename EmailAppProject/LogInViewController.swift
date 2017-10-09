//
//  LogInViewController.swift
//  EmailAppProject
//
//  Created by Felipe Montoya on 10/7/17.
//  Copyright © 2017 Felipe Montoya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var userNameInput: UITextField!
    var users = UsersData.init().userPost.keys
    var userInInput = String ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
 

     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
        if segue.identifier == "homeSegue"{
           let tabViewController = segue.destination as! UITabBarController
            let destinationViewController = tabViewController.childViewControllers.first as! HomeViewController
            destinationViewController.currentUser = userInInput
            
        }
        
     }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        userInInput = userNameInput.text!.lowercased()
        if users.contains(userInInput) {
            self.performSegue(withIdentifier: "homeSegue", sender: self)
        }

    }

}
