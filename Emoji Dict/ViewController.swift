//
//  ViewController.swift
//  Emoji Dict
//
//  Created by RONALD SALA on 1/24/17.
//  Copyright © 2017 RON SALA. All rights reserved.
//  V 0.02
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var dacooltableview: UITableView!
    
    var emojis = ["🐣","🍕","⛳️","🚁","📡","😆"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

