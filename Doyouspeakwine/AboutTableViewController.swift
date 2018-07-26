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
		UIApplication.shared.openURL(URL(string: "https://instagram.com/_doyouspeakwine_")!)
		
	}
	
	@IBAction func facebookButtonClicked(_ sender: AnyObject) {
		print("Facebook clicked")
		UIApplication.shared.openURL(URL(string: "https://facebook.com/doyouspeakwine")!)
	
}
	
	@IBAction func twitterButtonClicked(_ sender: AnyObject) {
		print("Twitter clicked")
		UIApplication.shared.openURL(URL(string: "https://twitter.com/@DoYouSpeakWine")!)
}
}
