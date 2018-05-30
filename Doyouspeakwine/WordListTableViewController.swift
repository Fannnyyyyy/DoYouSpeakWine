//
//  WordListTableViewController.swift
//  Doyouspeakwine
//
//  Created by Fanny Dubosc on 02/05/2018.
//  Copyright © 2018 Fanny Dubosc. All rights reserved.
//

import UIKit



class WordListTableViewController: UITableViewController {
	
	var words : [String] = ["Cépage", "Chardonnay", "Appellation"]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		/* On utilise le même view controlleur pour deux vues dans l'application.
		 * Le if ci-dessous permet d'avoir un titre différent en fonction de la vue
		 * qui est affichée. */
		if navigationController?.restorationIdentifier == "Home" {
			title = "Dico"
			navigationItem.title = "Doyouspeakwine"
		} else {
			title = "Mes mots"
		}
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
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		print ("toto")
	}
	
}
