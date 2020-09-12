//
//  ViewController.swift
//  ProtocolDelegate
//
//  Created by KULDEP KUMAR PRAJAPATI on 10/09/20.
//  Copyright © 2020 KULDEP KUMAR PRAJAPATI. All rights reserved.
//

import UIKit

class ViewController: UIViewController,passData {
    
    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbAddress: UILabel!
    @IBOutlet weak var lbPhoneNumber: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func gotoNextVC(_ sender: UIButton) {
        let secVC = self.storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        secVC.delegate = self
        self.navigationController?.pushViewController(secVC, animated: true)
        
    }
    
    
    func dataPassing(name: String, address: String, phone: String) {
        lbName.text=name
        lbAddress.text=address
        lbPhoneNumber.text = phone
    }

}

