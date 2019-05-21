//
//  ListTVC.swift
//  LeadCollection
//
//  Created by MindHack on 14/05/2019.
//  Copyright © 2019 MindHack. All rights reserved.
//

import UIKit

class ListTVC: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return StorageManager.shared.getData().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell")!
        let formData = StorageManager.shared.getData()[indexPath.row]
        cell.textLabel?.text = formData.user?.firstName
        return cell
    }
    
}
