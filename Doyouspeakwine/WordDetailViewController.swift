//
//  WordDetailViewController.swift
//  Doyouspeakwine
//
//  Created by Fanny Dubosc on 22/05/2018.
//  Copyright © 2018 Fanny Dubosc. All rights reserved.
//

import UIKit



class WordDetailViewController: UIViewController {
	
	var definition : Definition!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		title=definition.word
		print(definition.word)
	}
	
}

