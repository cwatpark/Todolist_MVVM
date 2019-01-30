

import UIKit
import RxSwift

class TodoTableViewController: UITableViewController,listProtoDelegate {
    
    private let todoList: TodolistViewModel = .init()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "To Do List"
        navigationController?.navigationBar.prefersLargeTitles = true
 
        
    }
    
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.getList.count ?? 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel?.text = todoList.getList[indexPath.row]
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segAdd"{
            let destinationVC = segue.destination as! AddTodoViewController
            destinationVC.Delegate = self
        }
    }
    
    
    
    func getlistProto(list: TodolistViewModel?) {
        print("Hello Protocol")
        tableView.reloadData()
    }
    
}
