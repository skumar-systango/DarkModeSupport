//
//  HomeViewController.swift
//  NewDemoDarkMode
//
//  Created by Sunil Kumar on 26/05/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet private var textView: UITextView!

    var text: String? {
        didSet {
            textView?.text = text
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.uiSetUp()
    }

    
    private func uiSetUp(){
        text = """
        “Systango is a leading software studio, headquartered in London, UK. We are a team of 350+ developers who help our clients leverage the latest technological trends like Blockchain, AI/ML, AR/VR, IoT, Chatbots, RPA and Data Analytics to create unparalleled experiences. Our offerings comprise UI/UX design, bespoke web and mobile app development, Cloud Engineering, Data Science and Data Analytics, DevOps, Quality Assurance, CRM and CMS integrations and Digital Marketing. We believe in automation, apps that are fast, efficient, attractive and easy-to-use. Our goal is to become a technology powerhouse and add value to the digital ecosystem with agile web and mobile application development services
        """
    }
    
}
