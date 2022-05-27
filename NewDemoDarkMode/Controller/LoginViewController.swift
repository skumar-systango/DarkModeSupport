//
//  LoginViewController.swift
//  NewDemoDarkMode
//
//  Created by Sunil Kumar on 26/05/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var viewSecondry: UIView!
    @IBOutlet weak var txtfFirstName: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    @IBOutlet weak var txtfPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiSetUp()
    }

    
    
    @IBAction func btnPushToHome(_ sender: Any) {
        let vc  = storyboard?.instantiateViewController(withIdentifier: "homeScreen") as! UITabBarController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    private func uiSetUp() {
        
        viewSecondry.layer.cornerRadius = 20
        txtfPassword.layer.cornerRadius = 8
        txtfFirstName.layer.cornerRadius = 8
        btnLogin.layer.cornerRadius = 8
        
         
        txtfFirstName.layer.borderWidth = 1
        txtfPassword.layer.borderWidth = 1
        
//        let color = UIColor.systemBackground
//        let traitCollection = self.view.traitCollection
//        let systemColor = color.resolvedColor(with: traitCollection)
//        self.view.backgroundColor = systemColor
        
        
        //set the border to the textfield
        let traiColor = txtfFirstName.traitCollection
        let traiPasswordColor = txtfPassword.traitCollection
        
        txtfPassword.layer.borderColor = UIColor.label.cgColor
        
        let taritPasswordColor = txtfPassword.traitCollection
    //    txtfPassword.layer.borderColor = UIColor.label.resolvedColor(with: taritPasswordColor).cgColor
        
        
        //option 1
//        txtfFirstName.layer.borderColor = UIColor.label.resolvedColor(with: traiColor).cgColor
        
        //option 2
//        taritPasswordColor.performAsCurrent {
//            txtfFirstName.layer.borderColor = UIColor.label.cgColor
//        }
        
//        //option 3
        UITraitCollection.current = taritPasswordColor
        txtfPassword.layer.borderColor = UIColor.label.cgColor

//
//
//
//        UITraitCollection.current = traiPasswordColor
//        txtfPassword.layer.borderColor = UIColor.label.cgColor
        
    }

    

   

}
