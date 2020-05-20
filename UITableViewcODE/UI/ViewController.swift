//
//  ViewController.swift
//  UITableViewcODE
//
//  Created by Carlos Esteban Quezada Pelaez - Ceiba Software on 19/05/20.
//  Copyright © 2020 Carlos Esteban Quezada Pelaez - Ceiba Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    struct Cells {
        static let videoCell = "videoCell"
    }
    
    var tableView = UITableView()
    var data = ["asd","asd2"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    private func configureTableView(){
        view.addSubview(tableView)
        setDelegates()
        tableView.rowHeight = 100
        //Set row Height
        //Register Cells
        //Set constrains
        tableView.pin(to: view)
    }
    
    
    private func setDelegates(){
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
    
}

extension ViewController:UITableViewDelegate,  UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.videoCell)
        cell?.textLabel = data[indexPath]
        
        
        return cell
    }
    
    
}

