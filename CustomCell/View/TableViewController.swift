//
//  TableViewController.swift
//  CustomCell
//
//  Created by Shishir_Mac on 6/3/23.
//

import UIKit

class TableViewController: UIViewController {
    
    private var recipes = Recipe.createRecipes()
    private let cellIdentifier: String = "tableCell"

    @IBOutlet weak var dataTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataTableView.delegate = self
        dataTableView.dataSource = self
        dataTableView.separatorStyle = .none

        dataTableView.register(UINib(nibName: "DataTableViewCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
        // Do any additional setup after loading the view.
    }

}

// MARK: - UITableViewDelegate, UITableViewDataSource

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? DataTableViewCell {
            cell.configurateTheCell(recipes[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
}
