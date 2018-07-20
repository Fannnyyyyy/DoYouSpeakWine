//
//  WordListTableViewController.swift
//  Doyouspeakwine
//
//  Created by Fanny Dubosc on 02/05/2018.
//  Copyright © 2018 Fanny Dubosc. All rights reserved.
//

import UIKit



class WordListTableViewController: UITableViewController {
	
	var words : [WordDescription] = [
		WordDescription.init(word : "Cépage", definition : "blah blah Cépage", images: [], relatedWords: []),
		WordDescription(word : "Appellation", definition : "blah blah Appellation", images: [], relatedWords: []),
		WordDescription(word : "Chardonnay", definition : "blah blah Chardonnay", images: [], relatedWords: []),
	]
	
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
		cell.textLabel?.text = words[cellNumber].word
		return cell
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		/* Create a constant containing the destination of the segue, as a WordDetailViewController. Note: If the destination of the segue is not a WordDetailViewController, the app will crash. We _KNOW_ it is (at least for the time being). */
		let wordDetailViewControler = segue.destination as! WordDetailViewController
		/* Means: Make sure the row of the indexpath for the selected row of the table view is not nil, and if it is not, assign it to the selectedIndex constant. */
		guard let selectedIndex = tableView.indexPathForSelectedRow?.row else {
			return
		}
		
		/* Create a constant named selectedDefinition which contains the element at index “selectedIndex” in the words array */
		let selectedDefinition = words[selectedIndex]
		/* Dit au wdvc récupère le contenu de la variable selectedDefinition qui se met dans la variable wordDescription */
		wordDetailViewControler.wordDescription = selectedDefinition
	}
	
}
