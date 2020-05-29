
import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var inTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondViewController = segue.destination as? SecondViewController {
            secondViewController.dataSecond = inTextField.text
        }
    }
    
    @IBAction func unwindToSecond(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source as? SecondViewController
            inTextField.text = sourceViewController?.dataSecond
    }
}

