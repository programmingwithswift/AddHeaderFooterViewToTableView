//
//  ViewController.swift
//  HeaderFooterTableView
//
//  Created by ProgrammingWithSwift on 2019/12/16.
//  Copyright © 2019 ProgrammingWithSwift. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
//        let headerView = UIView(frame: CGRect(x: 0,
//                                              y: 0,
//                                              width: self.tableView.frame.width,
//                                              height: 50))
//        headerView.backgroundColor = .green
//        self.tableView.tableHeaderView = headerView
        
//        let footerView = UIView(frame: CGRect(x: 0,
//                                              y: 0,
//                                              width: self.tableView.frame.width,
//                                              height: 50))
//        footerView.backgroundColor = .green
//        self.tableView.tableFooterView = footerView
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Example content"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0,
                                              y: 0,
                                              width: self.tableView.frame.width,
                                              height: 50))
        headerView.backgroundColor = .blue

        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 50
    }

    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footerView = UIView(frame: CGRect(x: 0,
                                              y: 0,
                                              width: self.tableView.frame.width,
                                              height: 50))
        footerView.backgroundColor = .orange
        
        return footerView
    }

}

