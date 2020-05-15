//
//  ChatsViewController.swift
//  pleaseGod
//
//  Created by eleonora elefante on 15/12/2019.
//  Copyright © 2019 Eleonora Elefante. All rights reserved.
//

import UIKit

class ChatsViewController: UIViewController, UITableViewDataSource, UISearchResultsUpdating {

    var chatsData = chats
    var filteredChatsData = chats
    var searchController: UISearchController!

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.barTintColor = .white
        searchController.searchBar.layer.borderColor = .none
        searchController.searchResultsUpdater = self as UISearchResultsUpdating
        searchController.searchBar.sizeToFit()
        searchController.searchBar.placeholder = "Search for messages or users"
        
        navigationItem.searchController = searchController
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
           return  1

       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        filteredChatsData.count
    }
    
   
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {


         let maskView = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
             maskView.backgroundColor = .white
             maskView.layer.cornerRadius = (maskView.frame.size.width) / 2

          let cell = tableView.dequeueReusableCell(withIdentifier: "chatCell", for: indexPath)
     
               cell.textLabel?.text = filteredChatsData[indexPath.row].name
               cell.imageView?.mask = maskView
               cell.imageView?.frame = CGRect(x: 0, y: 0, width: 55, height: 55)
               cell.imageView?.image = filteredChatsData[indexPath.row].image
               cell.imageView?.layer.masksToBounds = true
               cell.imageView?.contentMode = .scaleAspectFill
               cell.detailTextLabel?.text = filteredChatsData[indexPath.row].lastMessage
               cell.detailTextLabel?.textColor = .systemGray
     
               return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if (editingStyle == .delete) {
         
            filteredChatsData.remove(at: indexPath.row)
            self.tableView.reloadData()
            
        }
    }
    
    
    func updateSearchResults(for searchController: UISearchController) {
        
        if searchController.searchBar.text == nil || searchController.searchBar.text?.isEmpty == true {
            filteredChatsData = chatsData
            tableView.reloadData()
            return
        }
        
        if let searchText = self.searchController.self.searchBar.text?.lowercased() {
            
            filteredChatsData = chatsData.filter { (chat) -> Bool in
                chat.name.lowercased().contains(searchText.lowercased())
              
            }
            tableView.reloadData()
        }
    }
}
