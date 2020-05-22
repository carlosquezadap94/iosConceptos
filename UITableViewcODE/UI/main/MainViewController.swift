//
//  MainViewController.swift
//  UITableViewcODE
//
//  Created by Carlos Esteban Quezada Pelaez - Ceiba Software on 20/05/20.
//  Copyright © 2020 Carlos Esteban Quezada Pelaez - Ceiba Software. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    let nextButton = UIButton()
    let stackVerticalView = UIStackView()
    let titleLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureTitleLabel()
        configureStack()
    }
  
    
    func configureTitleLabel(){
        view.addSubview(titleLabel)
        titleLabel.text                         = "IOS TUTORIALS"
        titleLabel.font                         = UIFont.boldSystemFont(ofSize: 36)
        titleLabel.textAlignment                = .center
        titleLabel.numberOfLines                = 0
        titleLabel.adjustsFontSizeToFitWidth    = true
        setConstrainsTitleLabel()
    }
    
    func setConstrainsTitleLabel(){
        let safe = view.safeAreaLayoutGuide
        titleLabel.translatesAutoresizingMaskIntoConstraints                                        = false
        titleLabel.topAnchor.constraint(equalTo: safe.topAnchor,constant: -80).isActive             = true
        titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 20).isActive      = true
        titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20).isActive   = true
    }
    
    func configureStack(){
        //Navegacion
        stackVerticalView.axis          = .vertical
        stackVerticalView.distribution  = .fillEqually
        stackVerticalView.spacing       = 20
        addButtonToStack()
        setConstrainStack()
    }
    
    func addButtonToStack(){
          
        let buttonTableView = UIButton()
        buttonTableView.tag = 1
        buttonTableView.setTitle("TableView",for: .normal)
        setupButton(button: buttonTableView)
        
        let button2 = UIButton()
        button2.tag = 2
        button2.setTitle("Calculator",for: .normal)
        setupButton(button: button2)
        
        let button3 = UIButton()
        button3.tag = 3
        button3.setTitle("Other 2",for: .normal)
        setupButton(button: button3)
        
        let button4 = UIButton()
        button4.tag = 4
        button4.setTitle("Other 4",for: .normal)
        setupButton(button: button4)
               
        let button5 = UIButton()
        button5.tag = 5
        button5.setTitle("Other 5",for: .normal)
        
        let button6 = UIButton()
        button6.tag = 5
        button6.setTitle("Other 6",for: .normal)
        
        setupButton(button: buttonTableView)
        setupButton(button: button2)
        setupButton(button: button3)
        setupButton(button: button4)
        setupButton(button: button5)
        setupButton(button: button6)
    }
    
    func setConstrainStack(){
        view.addSubview(stackVerticalView)
        stackVerticalView.translatesAutoresizingMaskIntoConstraints = false
        stackVerticalView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20).isActive = true
        stackVerticalView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stackVerticalView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -20).isActive = true
        stackVerticalView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        
        
    }
    
    func setupButton(button:UIButton){
        //Cambio de Font
        button.setTitleColor(.white ,for:  .normal)
        button.addTarget(self,
                         action: #selector(buttonAction),
                         for: .touchUpInside)
        
        button.backgroundColor              = .blue
        button.titleLabel?.font             =  UIFont(name: "AvenirNext-DemiBold", size: 20)
        stackVerticalView.addArrangedSubview(button)
    }
    
    @objc func buttonAction(sender: UIButton!) {
        let btnsendtag: UIButton = sender
        if btnsendtag.tag == 1 {
            let newViewController = ViewController()
            self.navigationController?.pushViewController(newViewController, animated: true)
        }
        else if btnsendtag.tag == 2 {
                   let newViewController = ViewController()
                   self.navigationController?.pushViewController(newViewController, animated: true)
        }
    }
    
 
}
