//
//  ViewController.swift
//  SegueProject
//
//  Created by student on 01/04/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var MIT = College()
        Name.text = String(MIT.Name)
        StudentCount.text = String(MIT.StudentCount)
        PhoneNumber.text = String(MIT.PhoneNumber)
        Address.text = String(MIT.Address)
        DirectorName.text = String(MIT.DirectorName)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear")
    }
    

    @IBOutlet var Name: UITextField!
    @IBOutlet var StudentCount: UITextField!
    @IBOutlet var PhoneNumber: UITextField!
    @IBOutlet var Address: UITextField!
    @IBOutlet var DirectorName: UITextField!
}

