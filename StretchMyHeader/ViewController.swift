//
//  ViewController.swift
//  StretchMyHeader
//
//  Created by Hyung Jip Moon on 2017-03-14.
//  Copyright © 2017 leomoon. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let items = [
        NewsItem(category: .World, summary: "Climate change protests, divestments meet fossil fuels realities"),
        NewsItem(category: .Europe, summary: "Scotland's 'Yes' leader says independence vote is 'once in a lifetime'"),
        NewsItem(category: .MiddleEast, summary: "Airstrikes boost Islamic State, FBI director warns more hostages possible"),
        NewsItem(category: .Africa, summary: "Nigeria says 70 dead in building collapse; questions S. Africa victim claim"),
        NewsItem(category: .AsiaPacific, summary: "Despite UN ruling, Japan seeks backing for whale hunting"),
        NewsItem(category: .Americas, summary: "Officials: FBI is tracking 100 Americans who fought alongside IS in Syria"),
        NewsItem(category: .World, summary: "South Africa in $40 billion deal for Russian nuclear reactors"),
        NewsItem(category: .Europe, summary: "'One million babies' created by EU student exchanges"),
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
//    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath as IndexPath) as UITableViewCell
//        return cell
//    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! NewsItemCell
        cell.newsItem = item
        
        return cell
    }

}

