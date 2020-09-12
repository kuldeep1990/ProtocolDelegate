//
//  SecondViewController.swift
//  ProtocolDelegate
//
//  Created by KULDEP KUMAR PRAJAPATI on 10/09/20.
//  Copyright © 2020 KULDEP KUMAR PRAJAPATI. All rights reserved.
//

import UIKit

protocol passData {
    func dataPassing(name:String, address:String, phone:String)
}

class SecondViewController: UIViewController {

    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtAddress: UITextField!
    
    @IBOutlet weak var txtPnoneNumber: UITextField!
    
    var delegate:passData!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    
    @IBAction func saveData(_ sender: UIButton) {
            delegate.dataPassing(name: txtName.text!, address: txtAddress.text!, phone: txtPnoneNumber.text!)
        
    }
    
    
}
