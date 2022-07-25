//
//  RandomImageListCollectionViewCell.swift
//  Picterest
//
//  Created by 김기림 on 2022/07/25.
//

import UIKit

class RandomImageListCell: UICollectionViewCell, ReuseIdentifying {
    
    private let topBarStackView = UIStackView()
    private let starButton = UIButton(type: .system)
    private let titleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        
        attribute()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func attribute() {
        contentView.backgroundColor = .cyan
        
        topBarStackView.backgroundColor = .black.withAlphaComponent(0.4)
        topBarStackView.axis = .horizontal
        topBarStackView.alignment = .center
        topBarStackView.distribution = .fill
        
        starButton.setTitle("☆", for: .normal)
        starButton.setTitleColor(.white, for: .normal)
        starButton.titleLabel?.font = .systemFont(ofSize: 30, weight: .medium)
        titleLabel.text = "xxxxxxx"
    }
    
    private func layout() {
        contentView.addSubview(topBarStackView)
        topBarStackView.translatesAutoresizingMaskIntoConstraints = false
        topBarStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        topBarStackView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        topBarStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        topBarStackView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        let leftPadding = UIView()
        let rightPadding = UIView()
        
        [leftPadding, starButton, UIView(), titleLabel, rightPadding].forEach {
            topBarStackView.addArrangedSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        leftPadding.widthAnchor.constraint(equalToConstant: 20).isActive = true
        rightPadding.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        starButton.widthAnchor.constraint(equalTo: topBarStackView.heightAnchor, multiplier: 0.5).isActive = true
    }
}