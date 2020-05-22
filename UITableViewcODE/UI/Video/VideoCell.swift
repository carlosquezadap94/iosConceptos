//
//  VideoCell.swift
//  UITableViewcODE
//
//  Created by Carlos Esteban Quezada Pelaez - Ceiba Software on 20/05/20.
//  Copyright © 2020 Carlos Esteban Quezada Pelaez - Ceiba Software. All rights reserved.
//

import UIKit

//Siempre viene pre-definido con una imagen y texto
class VideoCell: UITableViewCell {

    var videoImageView = UIImageView()
    var videoTitleLabel = UILabel()
    var videoSubTitleLabel = UILabel()
    
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style:style,reuseIdentifier:reuseIdentifier)
        addSubview(videoImageView)
        addSubview(videoTitleLabel)
        addSubview(videoSubTitleLabel)
    
        configureImageView()
        configureLabel()
        setImageConstrains()
        setLabelConstrains()
        setSubLabelConstrains()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(video:Video){
        videoImageView.image                            = video.image
        videoTitleLabel.text                            = video.title
        videoSubTitleLabel.text                         = video.subtitle
        videoTitleLabel.font                            = UIFont(name: "Helvetica", size: 16)
        videoSubTitleLabel.font                         = UIFont(name: "Helvetica-Light", size: 12)
    }
    
    private func configureImageView(){
        videoImageView.layer.cornerRadius = 10
        videoImageView.clipsToBounds = true
    }
    
    
    private func configureLabel(){
        videoTitleLabel.numberOfLines = 0
        videoTitleLabel.adjustsFontSizeToFitWidth = true
        videoSubTitleLabel.numberOfLines = 0
        videoSubTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    private func setImageConstrains(){
        videoImageView.translatesAutoresizingMaskIntoConstraints = false
        videoImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        videoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        videoImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        videoImageView.topAnchor.constraint(equalTo:topAnchor,constant: 20).isActive = true
        videoImageView.widthAnchor.constraint(equalTo: videoImageView.heightAnchor, multiplier: 1/1).isActive = true
    }
    
    private func setLabelConstrains(){
        videoTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        videoTitleLabel.topAnchor.constraint(equalTo: topAnchor,constant: 10).isActive = true
        videoTitleLabel.leadingAnchor.constraint(equalTo: videoImageView.trailingAnchor, constant: 20).isActive = true
        videoTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        videoTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }
    
    private func setSubLabelConstrains(){
        videoSubTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        videoSubTitleLabel.topAnchor.constraint(equalTo: videoTitleLabel.bottomAnchor).isActive = true
        videoSubTitleLabel.leadingAnchor.constraint(equalTo: videoImageView.trailingAnchor, constant: 20).isActive = true
        videoSubTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }

}
