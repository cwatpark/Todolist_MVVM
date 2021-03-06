
import UIKit
import RxSwift


class AddTodoViewController: UIViewController {
    
    var listVM:TodolistViewModel?
    
    var addVM:AddTodoViewModel = .init()
    
    //var Delegate:listProtoDelegate?
    
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
            
            addVM.addItem(item: todo)
            
            self.navigationController?.popViewController(animated: true)
        }else{
            print("Can't Add List")
        }
        
    }
    
}
