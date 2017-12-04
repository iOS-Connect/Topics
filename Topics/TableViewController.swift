//
//  TableViewController.swift
//  Topics
//
//  Created by Sida Wang on 4/23/17.
//  Copyright © 2017 Sida Wang. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var animals = ["rabbit", "chicken", "cat", "dog", "frog", "rabbit", "chicken", "cat", "dog", "frog", "rabbit", "chicken", "cat", "dog", "frog", "rabbit", "chicken", "cat", "dog", "frog", "rabbit", "chicken", "cat", "dog", "frog"]
    var results = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.reloadData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension TableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return results.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Hey System give me a cell for this, It may have one that it can re-use or a new one will be made
        let cell = tableView.dequeueReusableCell(withIdentifier: "identifier", for: indexPath)
        cell.textLabel?.text = results[indexPath.row]
        return cell
    }
    
}
