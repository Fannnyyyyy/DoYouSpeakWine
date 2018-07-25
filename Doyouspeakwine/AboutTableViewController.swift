//
//  AboutTableViewController.swift
//  Doyouspeakwine
//
//  Created by Fanny on 25/07/2018.
//  Copyright © 2018 Fanny Dubosc. All rights reserved.
//

import UIKit



class AboutTableViewController: UITableViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
	}
	
	@IBAction func instagramButtonClicked(_ sender: AnyObject) {
		print("instagram clicked")
		UIApplication.shared.openURL(URL(string: "https://instagram.com")!)
		
	}
	
}
