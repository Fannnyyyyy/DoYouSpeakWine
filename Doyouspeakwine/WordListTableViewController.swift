//
//  WordListTableViewController.swift
//  Doyouspeakwine
//
//  Created by Fanny Dubosc on 02/05/2018.
//  Copyright © 2018 Fanny Dubosc. All rights reserved.
//

import UIKit



class WordListTableViewController: UITableViewController {
	
	var words : [String] = ["cépage", "chardonnay", "appellation"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}

	// MARK: - Table view data source
	
	/* La tableview (mon tableau) demande à la Worldlisttvc (le controller) combien de cellules afficher */
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return words.count
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
		let cellNumber = indexPath.row
		cell.textLabel?.text = words[cellNumber]
		return cell
	}
	
}
