//
//  ViewController.swift
//  GitHub_Project
//
//  Created by Aakash Adhikari on 2/18/20.
//  Copyright © 2020 Aakash Adhikari. All rights reserved.
//

import UIKit

class firstScreen: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var username: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchBar.delegate = self
    }
    
    //MARK: Table View Data Source
    
    override func numberOfSections(in tableView: UITableView) -> Int{
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        return cell
    }

}

extension firstScreen: UISearchBarDelegate{
    func firstScreenButtonClicked(_ searchBar: UISearchBar){
        
        
    }
}

