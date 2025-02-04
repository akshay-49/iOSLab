//
//  ViewController.swift
//  XCodeDemo
//
//  Created by Akshay on 21/01/25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var AcceptButton: UIButton!
    @IBAction func AcceptButtonClick(_ sender: Any) {
        print("User Clicked Accept Button")
    }
    @IBOutlet var CancelButton: UIButton! 
    @IBAction func CancelButtonClick(_ sender: Any) {
        print("User Clicked Cancel Button")
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    


}

