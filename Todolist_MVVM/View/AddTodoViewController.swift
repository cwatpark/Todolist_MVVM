
import UIKit
import RxSwift

protocol listProtoDelegate {
    func getlistProto(list:TodolistViewModel?)
}

class AddTodoViewController: UIViewController {
    
    var listVM:TodolistViewModel?
    var Delegate:listProtoDelegate?
    
    @IBOutlet weak var addTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Add To Do"
        // Do any additional setup after loading the view.
        let dataFilePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first
        print(dataFilePath as Any)
    }
    
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
        
        if let todo = addTextfield.text {
            var name = UserDefaults.standard.array(forKey: "Array") as! [String]
            name.append(todo)
            UserDefaults.standard.set(name, forKey: "Array")
            
    
            Delegate?.getlistProto(list: listVM)
            
            print(name.last ?? "")
            
            self.dismiss(animated: true, completion: nil)
            //self.navigationController?.popViewController(animated: true)
        }else{
            print("Can't Add List")
        }
        
    }
    
}