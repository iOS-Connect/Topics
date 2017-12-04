//
//  ViewController.swift
//  Topics
//
//  Created by Sida Wang on 4/23/17.
//  Copyright © 2017 Sida Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var label: UILabel!
    
    var results: [String] = [String]()
    
    @IBAction func addClicked(_ sender: Any) {
        //make sure user input sth
        guard let input1 = num1.text, let input2 = num2.text, input1 != "", input2 != "" else {
            print("must input in both field")
            //show alert optionally
            return
        }
        //make sure user input is int
        if let n1 = Int(input1), let n2 = Int(input2) {
            let result = "\(n1+n2)"
            label.text = result
            results.append(result)
        } else {
            print("please input integer")
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? TableViewController {
            destination.results = results
        }
    }

}
