//
//  CollectionTableCell.swift
//  HW14-IOS-RomanHlukharou
//
//  Created by Роман Глухарев on 10/07/2023.
//

import UIKit
import SnapKit

class CollectionTableCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    static let identifier = "CollectionTableCell"
    
    // MARK: - Outlets
    
    private lazy var photoTypeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .systemBlue
        return label
    }()
    
    private lazy var photoTypeIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .systemBlue
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    private lazy var photoTypeCount: UILabel = {
        let label = UILabel()
        label.textColor = .systemGray
        label.font = UIFont.systemFont(ofSize: 14)
        label.textAlignment = .right
        return label
    }()
    
    private lazy var lockIcon: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .systemGray
        return imageView
    }()
    
    private lazy var divider: UIView = {
       let divider = UIView()
        divider.backgroundColor = .systemGray2
        return divider
    }()
    
    private lazy var chevronIcon: UIImageView = {
       let imageView = UIImageView()
        let image = UIImage(systemName: "chevron.forward")
        imageView.image = image
        imageView.tintColor = .darkGray
        imageView.backgroundColor = .systemBackground
        return imageView
    }()
    
    // MARK: - Initializators
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layuot
    
    func setupView() {
        contentView.backgroundColor = .systemBackground
    }
    
    func setupHierarchy() {
        contentView.addSubview(photoTypeIcon)
        contentView.addSubview(photoTypeLabel)
        contentView.addSubview(chevronIcon)
        contentView.addSubview(photoTypeCount)
        contentView.addSubview(lockIcon)
        contentView.addSubview(divider)
    }
    
    func setupLayout() {
        
        photoTypeIcon.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(5)
            make.left.equalTo(contentView.snp.left).offset(5)
            make.bottom.equalTo(contentView.snp.bottom).offset(-5)
            make.width.equalTo(25)
        }
        
        photoTypeLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(5)
            make.left.equalTo(photoTypeIcon.snp.left).offset(40)
            make.bottom.equalTo(contentView.snp.bottom).offset(-5)
            make.width.equalTo(150)
        }
        
        photoTypeCount.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(5)
            make.right.equalTo(contentView.snp.right).offset(-25)
            make.bottom.equalTo(contentView.snp.bottom).offset(-5)
            make.width.equalTo(30)
        }
        
        lockIcon.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top).offset(10)
            make.right.equalTo(contentView.snp.right).offset(-25)
            make.bottom.equalTo(contentView.snp.bottom).offset(-10)
            make.width.equalTo(12)
        }
        
        divider.snp.makeConstraints { make in
            make.left.equalTo(photoTypeLabel.snp.left)
            make.right.equalTo(contentView.snp.right)
            make.bottom.equalTo(contentView.snp.bottom)
            make.height.equalTo(1)
        }
        
        chevronIcon.snp.makeConstraints { make in
            make.right.equalTo(contentView.snp.right).offset(-10)
            make.bottom.equalTo(contentView.snp.bottom).offset(-10)
            make.top.equalTo(contentView.snp.top).offset(10)
            make.width.equalTo(10)
        }
        
    }
    
    // MARK: - Configuration
    
    func configuration(model: CompositionalModel) {
        self.photoTypeIcon.image = UIImage(systemName: model.image)
        self.photoTypeLabel.text = model.mainTitle
        self.photoTypeCount.text = model.description
        
        if photoTypeLabel.text == "Hidden" || photoTypeLabel.text == "Recently Deleted"  {
            if let image = model.description {
                photoTypeCount.isHidden = true
                lockIcon.image = UIImage(systemName: image)
            }
        }
        
        if photoTypeLabel.text == "Screen Recordings" || photoTypeLabel.text == "Recently Deleted" {
            divider.isHidden = true
        }
    }
}
