

import UIKit

class ViewControllerOneSegue: UIViewController {

    @IBOutlet weak var myTextFieldOne: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dataOne = segue.destination as? ViewControllerTowSegue {
            dataOne.dataTwo = myTextFieldOne.text!
        }
    }
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        let dataViewcontroller = unwindSegue.source as? ViewControllerTowSegue
        myTextFieldOne.text = dataViewcontroller?.myTextFieldTwo.text
        
    }

}
