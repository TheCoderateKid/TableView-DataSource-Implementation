//
//  ViewController.swift
//  TableviewDatasourceExample
//
//  Created by Chris Linder on 1/25/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var dataSource: DataSource!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dataSource.setup(items: ["hello", "goodbye", "whatever"])
    }
}

