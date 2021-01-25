//
//  DataSource.swift
//  TableviewDatasourceExample
//
//  Created by Chris Linder on 1/25/21.
//

import Foundation
import UIKit

class DataSource: NSObject {
    
    @IBOutlet weak var tableView: UITableView!
    var items:[String]?
    
    func setup(items: [String]) {
        self.tableView.register(UINib(nibName: "TestTableViewCell", bundle: nil), forCellReuseIdentifier: "TestTableViewCell")
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.items = items
        self.tableView.reloadData()
    }
}


extension DataSource: UITableViewDelegate {
    
}

extension DataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items?.count ?? 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestTableViewCell", for: indexPath) as! TestTableViewCell
        cell.textLabel?.text = "\(self.items![indexPath.row])  \(indexPath.row)"
        
        return cell
    }
}
