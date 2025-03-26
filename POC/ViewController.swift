//
//  ViewController.swift
//  POC
//
//  Created by somdattasikdar on 24/03/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        checkOSVersion()
    }
    
    func checkOSVersion() {
        if #available(iOS 12.0, *) {
            print("Supported OS Version")
        } else {
            showUnsupportedVersionAlert()
        }
    }
    
    func showUnsupportedVersionAlert() {
        let alert = UIAlertController(title: "Unsupported iOS Version",
                                      message: "This app requires iOS 12.0 or later.",
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Exit", style: .destructive, handler: { _ in
            exit(0)
        }))
        
        present(alert, animated: true, completion: nil)
        
        view.isUserInteractionEnabled = false
    }
}

