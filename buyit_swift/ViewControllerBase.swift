//
//  ViewControllerBase.swift
//  buyit_swift
//
//  Created by Alla Pogotskaya on 6/19/14.
//  Copyright (c) 2014 tau. All rights reserved.
//

import UIKit

class ViewControllerBase: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var dataSource = DataSource()
    
    func getTableView() -> UITableView! {
        return nil
    }
    
    func getDataLength(dataSource: DataSource) -> Int {
        return 0
    }
    
    func fillCell(cell: ListNameCellView, dataSoure: DataSource, indexPath: NSIndexPath!) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.getTableView().dataSource = self
        self.getTableView().delegate = self;
        
        for i in 0...10 {
            self.getTableView().registerNib(UINib(nibName: "ListNameCellView", bundle: nil), forCellReuseIdentifier: "listNameCellId")
        }
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        var cell = tableView.dequeueReusableCellWithIdentifier("listNameCellId") as ListNameCellView
        self.fillCell(cell, dataSoure: dataSource, indexPath: indexPath)
        return cell
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int
    {
        return self.getDataLength(self.dataSource)
    }
}
