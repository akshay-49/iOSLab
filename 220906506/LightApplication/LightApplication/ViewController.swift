import UIKit

class ViewController: UIViewController {

 
    @IBOutlet var toggleButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    
        view.backgroundColor = UIColor.black
    }

    @IBAction func toggleLight(_ sender: UIButton) {
   
        if view.backgroundColor == UIColor.black {
            view.backgroundColor = UIColor.white
            toggleButton.setTitle("Turn Off", for: .normal)
        } else {
            view.backgroundColor = UIColor.black
            toggleButton.setTitle("Turn On", for: .normal)
        }
    }
}
