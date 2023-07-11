//
//  CollectionViewCell.swift
//  HW14-IOS-RomanHlukharou
//
//  Created by Роман Глухарев on 09/07/2023.
//

import UIKit
import SnapKit

class CollectionViewCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    static let identifier = "CompositionalCell"
    
    // MARK: - Outlets
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 5
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .systemBackground
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private lazy var mainTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    private lazy var photoCountLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .lightGray
        return label
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
    
    // MARK: - Layour
    
    func setupView() {
        contentView.backgroundColor = .systemBackground
    }
    
    func setupHierarchy() {
        contentView.addSubview(imageView)
        contentView.addSubview(mainTitleLabel)
        contentView.addSubview(photoCountLabel)
    }
    
    func setupLayout() {
        imageView.snp.makeConstraints { make in
            make.top.left.right.equalTo(contentView)
            make.bottom.equalTo(contentView.snp.bottom).offset(-35)
            make.width.equalTo(imageView.snp.height)
        }
        
        mainTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(3)
            make.left.equalTo(contentView.snp.left)
            make.width.equalTo(100)
            
        }
        
        photoCountLabel.snp.makeConstraints { make in
            make.top.equalTo(mainTitleLabel.snp.bottom).offset(1)
            make.left.equalTo(contentView.snp.left)
            make.width.equalTo(50)
            
        }
    }
    
    // MARK: - Configuration
    
    func configuration(model: CompositionalModel) {
        self.imageView.image = UIImage(named: model.image)
        self.mainTitleLabel.text = model.mainTitle
        self.photoCountLabel.text = model.description
        
        if mainTitleLabel.text == "People" {
            imageView.contentMode = .scaleAspectFit
        }
    }
}
