

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var outTextField: UITextField!
    
    var dataSecond: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        outTextField.text = dataSecond
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        dataSecond = outTextField.text
    }

}
