//
//  ViewController.swift
//  project4
//
//  Created by Vlad Klunduk on 04/08/2023.
//

import UIKit

class ViewController: UITableViewController {
    
    var websites = ["apple.com" , "hackingwithswift.com"]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Browser"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Website", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "Web") as! WebsiteViewController
        vc.website = websites[indexPath.row]
        vc.websites = websites
        navigationController?.pushViewController(vc, animated: true)
    }
}

