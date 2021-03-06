

import UIKit
import RxSwift

class TodoTableViewController: UITableViewController {
    
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
    
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        let addVC = self.storyboard?.instantiateViewController(withIdentifier: "addStoryboard") as! AddTodoViewController
        self.navigationController?.pushViewController(addVC, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
}
