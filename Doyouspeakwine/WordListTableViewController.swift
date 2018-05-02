//
//  WordListTableViewController.swift
//  Doyouspeakwine
//
//  Created by Fanny Dubosc on 02/05/2018.
//  Copyright © 2018 Fanny Dubosc. All rights reserved.
//

import UIKit



class WordListTableViewController: UITableViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}

	// MARK: - Table view data source
	
	/* La tableview (mon tableau) demande à la Worldlisttvc (le controller) combien de cellules afficher */
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 1
	}
	
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
		cell.textLabel?.text = "mot"
		return cell
	}
	
}
