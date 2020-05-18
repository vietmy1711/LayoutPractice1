//
//  BigTableViewCell.swift
//  LayoutPractice1
//
//  Created by MM on 5/18/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class BigTableViewCell: UITableViewCell {
    let lblTop: UILabel = {
        let lbl = UILabel()
        lbl.text = "First Line 123456"
        lbl.font = UIFont(name: "Helvetica-Bold", size: 20)
        lbl.textColor = UIColor(red: 61/255, green: 72/255, blue: 83/255, alpha: 1)
        return lbl
    }()
    
    let lblFirst: UILabel = {
        let lbl = UILabel()
        lbl.text = "First"
        lbl.font = UIFont(name: "Helvetica", size: 16)
        lbl.textColor = UIColor(red: 144/255, green: 150/255, blue: 157/255, alpha: 1)
        return lbl
    }()
    
    let lblSecond: UILabel = {
        let lbl = UILabel()
        lbl.text = "Second"
        lbl.font = UIFont(name: "Helvetica", size: 16)
        lbl.textColor = UIColor(red: 144/255, green: 150/255, blue: 157/255, alpha: 1)
        return lbl
    }()
    
    let vwView: UIView = {
        let vw = UIView()
        vw.backgroundColor = .white
        vw.layer.cornerRadius = 10
        vw.layer.masksToBounds = false
        vw.layer.shadowColor = UIColor.black.cgColor
        vw.layer.shadowOffset = .zero
        vw.layer.shadowRadius = 0.2
        vw.layer.shadowOpacity = 0.2
        return vw
    }()
    
    let vwButton: UIView = {
        let vw = UIView()
        vw.backgroundColor = .white
        //vw.layer.cornerRadius = 10
        vw.layer.masksToBounds = false
        vw.layer.shadowColor = UIColor.black.cgColor
        vw.layer.shadowOffset = .zero
        vw.layer.shadowRadius = 0.2
        vw.layer.shadowOpacity = 0.2
        return vw
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
        return stackView
    }()
    
    let stackViewHeart: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.spacing = 2
        return stackView
    }()
    
    let imgHeart1: UIImageView = {
        let img = UIImageView()
        img.tintColor = .systemPink
        img.image = UIImage(systemName: "heart.fill")
        return img
    }()
    
    let imgHeart2: UIImageView = {
        let img = UIImageView()
        img.tintColor = .systemPink
        img.image = UIImage(systemName: "heart.fill")
        return img
    }()
    
    let imgHeart3: UIImageView = {
        let img = UIImageView()
        img.tintColor = .systemPink
        img.image = UIImage(systemName: "heart")
        return img
    }()
    
    let imgHeart4: UIImageView = {
        let img = UIImageView()
        img.tintColor = .systemPink
        img.image = UIImage(systemName: "heart")
        return img
    }()
    
    let imgHeart5: UIImageView = {
        let img = UIImageView()
        img.tintColor = .systemPink
        img.image = UIImage(systemName: "heart")
        return img
    }()
    
    let btnButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Button", for: .normal)
        return btn
    }()
    
    let tableView = UITableView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(SmallTableViewCell.self, forCellReuseIdentifier: "SmallTableViewCell")
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setupCell() {
        contentView.backgroundColor = UIColor(red: 246/255, green: 248/255, blue: 251/255, alpha: 1)
        contentView.addSubview(vwView)
        
        vwView.addSubview(lblTop)
        vwView.addSubview(stackView)
        vwView.addSubview(vwButton)
        vwView.addSubview(tableView)
        stackView.addArrangedSubview(lblFirst)
        stackView.addArrangedSubview(lblSecond)
        stackView.addArrangedSubview(stackViewHeart)
        stackViewHeart.addArrangedSubview(imgHeart1)
        stackViewHeart.addArrangedSubview(imgHeart2)
        stackViewHeart.addArrangedSubview(imgHeart3)
        stackViewHeart.addArrangedSubview(imgHeart4)
        stackViewHeart.addArrangedSubview(imgHeart5)

        vwButton.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        vwView.translatesAutoresizingMaskIntoConstraints = false
        vwView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16).isActive = true
        vwView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16).isActive = true
        vwView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 16).isActive = true
        vwView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -16).isActive = true
        
        
        lblTop.translatesAutoresizingMaskIntoConstraints = false
        
        lblTop.centerXAnchor.constraint(equalTo: vwView.centerXAnchor).isActive = true
        lblTop.topAnchor.constraint(equalTo: vwView.topAnchor, constant: 28).isActive = true
        lblTop.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: -12).isActive = true
        
        stackView.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 50).isActive = true
        stackView.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: -50).isActive = true
        stackView.bottomAnchor.constraint(equalTo: vwButton.topAnchor).isActive = true
        
        vwButton.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 0).isActive = true
        vwButton.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: 0).isActive = true
        vwButton.bottomAnchor.constraint(equalTo: tableView.topAnchor, constant: 0).isActive = true

        vwButton.addSubview(btnButton)
        btnButton.translatesAutoresizingMaskIntoConstraints = false
        
        btnButton.topAnchor.constraint(equalTo: vwButton.topAnchor, constant: 10).isActive = true
        btnButton.bottomAnchor.constraint(equalTo: vwButton.bottomAnchor, constant: -10).isActive = true
        btnButton.leftAnchor.constraint(equalTo: vwButton.leftAnchor, constant: 30).isActive = true
        btnButton.rightAnchor.constraint(equalTo: vwButton.rightAnchor, constant: -30).isActive = true
        btnButton.heightAnchor.constraint(equalToConstant: 32).isActive = true

        tableView.leftAnchor.constraint(equalTo: vwView.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: vwView.rightAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: vwView.bottomAnchor).isActive = true

    }
    
    
}


extension BigTableViewCell: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SmallTableViewCell", for: indexPath)
        cell.selectionStyle = .default
        return cell
    }
    
    
}
