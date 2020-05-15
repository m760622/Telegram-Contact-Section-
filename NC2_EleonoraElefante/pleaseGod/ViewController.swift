
//  ViewController.swift
//  pleaseGod
//
//  Created by eleonora elefante on 08/12/2019.
//  Copyright © 2019 Eleonora Elefante. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UISearchResultsUpdating {
    
    
    @IBOutlet weak var sortButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var searchController: UISearchController!
    
    let dataModel = contactsArray
    var filteredDataModel = contactsArray
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.barTintColor = .white
        searchController.searchBar.layer.borderColor = .none
        searchController.searchResultsUpdater = self as UISearchResultsUpdating
        searchController.searchBar.sizeToFit()
        
        navigationItem.searchController = searchController
        
        
        
//        let rightButton = UIBarButtonItem(title: "+", style: .plain, target: self, action: #selector(plusBarButtonTapped))
//        
//        rightButton.setTitleTextAttributes([NSAttributedString.Key.font : UIFont.systemFont(ofSize: 30)], for: .normal)
//        navigationItem.rightBarButtonItem = rightButton
    }
    
//    @objc func plusBarButtonTapped() {
//        
//    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return  3
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return 1
        } else if section == 1 {
            return 1
        } else {
            return filteredDataModel.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let firstCell =  tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
            firstCell.textLabel?.text = "   Add people Nearby"
            firstCell.textLabel?.textColor = .link
            firstCell.detailTextLabel?.text = ""
            firstCell.imageView?.image = UIImage(systemName: "mappin")
            firstCell.imageView?.frame = CGRect(x: 0, y: 0, width: 55, height: 55)
            
            return firstCell
        }
        
        if indexPath.section == 1 {
            let secondCell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
            secondCell.textLabel?.text = "   Invite Friends"
            secondCell.textLabel?.textColor = .link
            secondCell.detailTextLabel?.text = ""
            secondCell.imageView?.image = UIImage(systemName: "person.badge.plus")
            secondCell.imageView?.frame = CGRect(x: 12, y: 0, width: 55, height: 55)
            
            return secondCell
        }
        
        let maskView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        maskView.backgroundColor = .white
        maskView.layer.cornerRadius = (maskView.frame.size.width) / 2
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = filteredDataModel[indexPath.row].name
        cell.imageView?.mask = maskView
        cell.imageView?.frame = CGRect(x: 0, y: 0, width: 55, height: 55)
        cell.imageView?.image = filteredDataModel[indexPath.row].image
        cell.imageView?.layer.masksToBounds = true
        cell.imageView?.contentMode = .scaleAspectFill
        cell.detailTextLabel?.text = filteredDataModel[indexPath.row].lastSeenLabel
        cell.detailTextLabel?.textColor = .systemGray
        
        
        return cell
    }
    
    @IBAction func showActionSheet(_ sender: Any) {
        
        let actionSheet = UIAlertController(title: "Sort by:", message: nil, preferredStyle: .actionSheet)
        
        let name = UIAlertAction(title: "Name", style: .default) { action in
            self.filteredDataModel.sort { (left, right) -> Bool in
                left.name < right.name
              }
            self.sortButton.titleLabel?.text = "         Sorted by Name ▼"
            self.tableView.reloadData()
        }
        let lastSeen = UIAlertAction(title: "Last Seen Time", style: .default) { action in
            self.filteredDataModel.sort { (left, right) -> Bool in
                left.lastSeen < right.lastSeen
            }
            self.sortButton.titleLabel?.text = "Sorted by Last Seen Time ▼"
            self.tableView.reloadData()
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        actionSheet.addAction(name)
        actionSheet.addAction(lastSeen)
        actionSheet.addAction(cancel)
        
        present(actionSheet, animated: true, completion: nil)
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
        if searchController.searchBar.text == nil || searchController.searchBar.text?.isEmpty == true {
            filteredDataModel = dataModel
            tableView.reloadData()
            return
        }
        
        if let searchText = self.searchController.self.searchBar.text {
            
            filteredDataModel = dataModel.filter { (user) -> Bool in
                
                user.name.lowercased().contains(searchText.lowercased())
            }
    
            
            tableView.reloadData()
        }
    }
}

 
