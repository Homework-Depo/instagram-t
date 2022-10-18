//
//  SettingsViewController.swift
//  instragram-t
//
//  Created by Javier Aponte on 17/10/22.
//

import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func onTapBack(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
