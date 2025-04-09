//
//  BlueViewController.swift
//  SegueProject
//
//  Created by student on 01/04/25.
//

import UIKit

class BlueViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let MIT = Department()
        HOD.text = String(MIT.HOD)
        FacultyStrength.text = String(MIT.FacultyStrength)
        Location.text = String(MIT.Location)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear 2")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear 2")
            
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear 2")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear 2")
    }
    
    @IBAction func unwindToBlueScreen(_ unwindSegue: UIStoryboardSegue) {
        _ = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    @IBOutlet var HOD: UITextField!
    @IBOutlet var FacultyStrength: UITextField!
    @IBOutlet var Location: UITextField!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
