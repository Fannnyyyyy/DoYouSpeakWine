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
	
	override func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
		let cell: UITableViewCell? = tableView.cellForRow(at: indexPath)
		let id: String? = cell?.reuseIdentifier
		if id == "ContactUs" {
			return true
		}
		if id == "Share" {
			return true
		}
		if id == "Thanks" {
			return true
		}
		return false
	}
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		print("toto")
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
