//
//  TeamTableViewCell.swift
//  premierLig
//
//  Created by Kadir Dündar on 25.03.2023.
//

import UIKit

class TeamTableViewCell: UITableViewCell {

    static let cellId = "TeamTableViewCell"
    
    private lazy var containerWv : UIView = {
        let vw = UIView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    private lazy var contentstackVw : UIStackView = {
       let stackview = UIStackView()
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.spacing = 4
        stackview.axis = .vertical
        return stackview
    }()
    private lazy var nameLbl: UILabel = {
    let lbl = UILabel ()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 18, weight: .bold)
        lbl.textColor = .white
    return lbl
    }()
    private lazy var foundLbl: UILabel = {
    let lbl = UILabel ()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .light)
        lbl.textColor = .white
    return lbl
    }()
    private lazy var jobLbl: UILabel = {
    let lbl = UILabel ()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 10, weight: .light)
        lbl.textColor = .white
    return lbl
    }()
    private lazy var infoLbl: UILabel = {
    let lbl = UILabel ()
        lbl.translatesAutoresizingMaskIntoConstraints = false
        lbl.numberOfLines = 0
        lbl.font = .systemFont(ofSize: 12, weight: .medium)
        lbl.textColor = .white
    return lbl
    }()
    private lazy var badgeImageVw :UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    private lazy var button : UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.tintColor = .white
        return button
    }()
    // MARK: lifecycle
    override func layoutSubviews() {
        super.layoutSubviews()
        containerWv.layer.cornerRadius = 10
    }
    func configure(){
        contentView.backgroundColor = TeamType.arsenal.background
        badgeImageVw.image = TeamType.arsenal.badge
        button.setImage(UIImage(systemName: "play.circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 32)),for : .normal)
        nameLbl.text = "Arsenal"
        foundLbl.text = "1880"
        jobLbl.text = "current manager: mikel"
        infoLbl.text = "bilgi satırı bilgi bilgi"
        
        self.contentView.addSubview(containerWv)
        
        containerWv.addSubview(contentstackVw)
        containerWv.addSubview(badgeImageVw)
        containerWv.addSubview(button)
        
        contentstackVw.addArrangedSubview(nameLbl)
        contentstackVw.addArrangedSubview(foundLbl)
        contentstackVw.addArrangedSubview(jobLbl)
        contentstackVw.addArrangedSubview(infoLbl)
        
        
        NSLayoutConstraint.activate([
            containerWv.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 8),
            containerWv.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -8),
            containerWv.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 8),
            containerWv.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor,constant: -8),
            
            badgeImageVw.heightAnchor.constraint(equalToConstant: 50),
            badgeImageVw.widthAnchor.constraint(equalToConstant:50)
            ,badgeImageVw.topAnchor.constraint(equalTo: contentstackVw.topAnchor),
            badgeImageVw.leadingAnchor.constraint(equalTo: containerWv.leadingAnchor, constant: 8),
            contentstackVw.topAnchor.constraint(equalTo: containerWv.topAnchor, constant: 16),
            contentstackVw.bottomAnchor.constraint(equalTo:containerWv.bottomAnchor,constant:-16),
            contentstackVw.leadingAnchor.constraint(equalTo:badgeImageVw.trailingAnchor,constant:8),
            contentstackVw.trailingAnchor.constraint(equalTo:button.leadingAnchor,constant:-8),
            button.heightAnchor.constraint(equalToConstant:44),
            button.widthAnchor.constraint(equalToConstant:44),
            button.trailingAnchor.constraint(equalTo:containerWv.trailingAnchor,constant:-8), button.centerYAnchor.constraint(equalTo:containerWv.centerYAnchor)
        ])

    }

}
