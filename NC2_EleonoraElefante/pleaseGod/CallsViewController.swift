//
//  CallsViewController.swift
//  pleaseGod
//
//  Created by eleonora elefante on 15/12/2019.
//  Copyright © 2019 Eleonora Elefante. All rights reserved.
//

import UIKit

class CallsViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    var callsData = callsArray
    var missedCallData = missedCallArray
    var allCalls = callsArray
    

     override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.dataSource = self
        changeList((Any).self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return callsData.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return  1

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {


        let maskView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
            maskView.backgroundColor = .white
            maskView.layer.cornerRadius = (maskView.frame.size.width) / 2

         let cell = tableView.dequeueReusableCell(withIdentifier: "callCell", for: indexPath)
    
              cell.textLabel?.text = callsData[indexPath.row].name
              cell.imageView?.mask = maskView
              cell.imageView?.frame = CGRect(x: 0, y: 0, width: 55, height: 55)
              cell.imageView?.image = callsData[indexPath.row].image
              cell.imageView?.layer.masksToBounds = true
              cell.imageView?.contentMode = .scaleAspectFill
              cell.detailTextLabel?.text = callsData[indexPath.row].typeCall
              cell.detailTextLabel?.textColor = .systemGray
              return cell
        
              
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
         
            callsData.remove(at: indexPath.row)
            self.tableView.reloadData()
            
        }
    }
    
    
    @IBAction func changeList(_ sender: Any) {
        if segmentedControl.selectedSegmentIndex == 0 {
            callsData = allCalls
        } else if segmentedControl.selectedSegmentIndex == 1 {
            callsData = missedCallData
            
        }
        self.tableView.reloadData()
    }

    
    
}
