//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ankit Singh on 1/21/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func PressMe(_ sender: UIButton) {
        print("Hello World")
    }
    
}

