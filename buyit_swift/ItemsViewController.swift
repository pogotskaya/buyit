//
//  ItemsViewController.swift
//  buyit_swift
//
//  Created by Alla Pogotskaya on 6/13/14.
//  Copyright (c) 2014 tau. All rights reserved.
//

import UIKit

class ItemsViewController: ViewControllerBase {
    var selectedLabel: UILabel!
    
    @IBOutlet var tableView : UITableView
    
    override func getTableView() -> UITableView! {
        return self.tableView;
    }
    
    override func getDataLength(dataSource: DataSource) -> Int {
        return dataSource.getListItems(selectedLabel.text).count
    }
    
    override func fillCell(cell: ListNameCellView, dataSoure: DataSource, indexPath: NSIndexPath!) {
        var title = dataSource.getListItems(selectedLabel.text)[indexPath.row]
        
        //cell.listImage.image = [UIImage imageNamed: @"2 image"];
        
        cell.nameButton.setTitle(title, forState: UIControlState.Normal)
        cell.nameButton.addTarget(self, action:Selector("cellSelected:") , forControlEvents:UIControlEvents.TouchDown)
    }
    
    func cellSelected(sender:NSObject)
    {
        var button = sender as UIButton;
        println(button.titleLabel.text)
    }
}