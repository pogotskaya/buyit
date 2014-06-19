//
//  ViewController.swift
//  buyit_swift
//
//  Created by Alla Pogotskaya on 6/13/14.
//  Copyright (c) 2014 tau. All rights reserved.
//

import Foundation
import UIKit

class ViewController: ViewControllerBase {
    
    @IBOutlet var tableView : UITableView
    
    override func getTableView() -> UITableView! {
        return self.tableView;
    }
    
    override func getDataLength(dataSource: DataSource) -> Int {
        return dataSource.getLists().count
    }
    
    override func fillCell(cell: ListNameCellView, dataSoure: DataSource, indexPath: NSIndexPath!) {
        var title = dataSource.getLists()[indexPath.row]
        
        //cell.listImage.image = [UIImage imageNamed: @"2 image"];
        
        cell.nameButton.setTitle(title, forState: UIControlState.Normal)
        cell.nameButton.addTarget(self, action:Selector("cellSelected:") , forControlEvents:UIControlEvents.TouchDown)
    }
    
    func cellSelected(sender:NSObject)
    {
        var button = sender as UIButton;
        println(button.titleLabel.text)
        self.performSegueWithIdentifier("navigateToList", sender: button.titleLabel)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)
    {
        var destination = segue.destinationViewController as ItemsViewController;
        destination.selectedLabel = sender as UILabel!;

    }
}

