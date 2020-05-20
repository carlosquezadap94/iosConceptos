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
    var videos:[Video] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Personajes"
        configureTableView()
        videos = fetchData()
    }
    
    private func configureTableView(){
        view.addSubview(tableView)
        setDelegates()
        tableView.rowHeight = 100
        tableView.register(VideoCell.self, forCellReuseIdentifier: Cells.videoCell)
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
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
         let cell = tableView.dequeueReusableCell(withIdentifier: Cells.videoCell) as! VideoCell
         
         let video = videos[indexPath.row]
         cell.set(video: video)
        
        return cell
    }
}

extension ViewController{
    func fetchData()-> [Video]{
        let video1 = Video(image: Images.captain!, title: "Capitan")
        let video2 = Video(image: Images.donatello!, title: "donatello")
        let video3 = Video(image: Images.pinguino!, title: "pinguino")
        let video4 = Video(image: Images.batman!, title: "batman")
        let video5 = Video(image: Images.brutus!, title: "brutus")
        let video6 = Video(image: Images.ciclope!, title: "ciclope")
        
        return [video1,video2,video3,video4,video5,video6]
    }
}
