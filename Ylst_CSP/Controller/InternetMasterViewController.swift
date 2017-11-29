//
//  InternetMasterViewController.swift
//  Ylst_CSP
//
//  Created by Ylst, Zachary on 11/29/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit

class InternetMasterViewController: UITableViewController
{
    private (set) lazy var internetTopics: [String] =
    {
        return [
            "Definitions",
            "CSP",
            "CTEC",
            "Canyons",
            "Twitter",
            "Swift Guide"
        ]
    }()
    
    private var detailViewController: InternetDetailViewController?
    
    private func setup() -> Void
    {
        
    }
    
    override public func viewDidLoad()
    {
        super.viewDidLoad()
        setup()
        // Uncomm the following line to preserve selection between presentations
        self.clearsSelectionOnViewWillAppear = false
    }
    
    //MARK: - Table view data source
    
    override public func numberOfSections(in tabView: UITableView) -> Int
    {
        // warning Incomplete implementation, return the number of selections
        return 1
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection setion: Int) -> Int
    {
        return internetTopics.count
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: indexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let currentText = internetTopics[indexPath.row]
        cell.textLabel!.text = currentText
        
        return cell
    }
    
    override public func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
}

