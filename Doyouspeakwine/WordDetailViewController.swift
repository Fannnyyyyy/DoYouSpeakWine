//
//  WordDetailViewController.swift
//  Doyouspeakwine
//
//  Created by Fanny Dubosc on 22/05/2018.
//  Copyright © 2018 Fanny Dubosc. All rights reserved.
//

import UIKit



class WordDetailViewController: UIViewController {
	
	var wordDescription : WordDescription!
	
	/* On a ajouté le labeldefinition pour pouvoir changer ce qui est affiché dans le label */
	@IBOutlet var labelDefinition : UILabel!


	override func viewDidLoad() {
		super.viewDidLoad()
		
		/* dit au titre de la view de récupérer le mot de la définition et de l'afficher */
		title=wordDescription.word
		print(wordDescription.word)
		/* le texte du label Definition récupère la définition de la variable wordDescription */
		labelDefinition.text=wordDescription.definition
	
	}
	
}

