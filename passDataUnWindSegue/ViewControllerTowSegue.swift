

import UIKit

class ViewControllerTowSegue: UIViewController {

    @IBOutlet weak var myTextFieldTwo: UITextField!
    var dataTwo: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if dataTwo != nil {
            myTextFieldTwo.text = dataTwo
        }
    }
    @IBAction func backOneNoData(backOneNoData: UIStoryboardSegue) {
        performSegue(withIdentifier: "backOneNoData", sender: nil)
        
    }
    
    @IBAction func dissmiss() {
        dismiss(animated: true, completion: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        dataTwo = myTextFieldTwo.text!
    }


}
