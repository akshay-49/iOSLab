//
//  ViewController.swift
//  LightApp
//
//  Created by Akshay on 24/01/25.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true

    @IBOutlet weak var lightButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    fileprivate func updateUI(){
        if lightOn{
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
        }
        else{
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }
    }
    
    
    @IBAction func ButtonPressed(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
}

