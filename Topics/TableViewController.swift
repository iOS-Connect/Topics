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
        //if system has existing cell available in memory -> give me one
        if let existingCell = tableView.dequeueReusableCell(withIdentifier: "identifier") {
            existingCell.textLabel?.text = results[indexPath.row]
            return existingCell
        }
        //if system not cached yet, I will new one  //the system will cache it behind the scene.
        let cell = UITableViewCell(style: .default, reuseIdentifier: "identifier")
        cell.textLabel?.text = results[indexPath.row]
        return cell
    }
    
}
