//
//  CollectionViewCell.swift
//  HW14-IOS-RomanHlukharou
//
//  Created by Роман Глухарев on 09/07/2023.
//

import UIKit
import SnapKit

class CollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CompositionalCell"
    
//    fileprivate func configure() {
//        if let image = settings?.image {
//            imageView.image = UIImage(named: image)
//        }
//
//        mainTitleLabel.text = settings?.mainTitle
//        photoCountLabel.text = settings?.description
//    }
//
//    var settings: CompositionalModel? {
//        didSet {
//            configure()
//        }
//    }
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 5
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private lazy var mainTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()
    
    private lazy var photoCountLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.textColor = .lightGray
        return label
    }()
    
    //    private lazy var stack: UIStackView = {
    //        let stack = UIStackView(arrangedSubviews: [imageView, mainTitleLabel, photoCountLabel])
    //        stack.axis = .horizontal
    //        stack.alignment = .leading
    //        stack.distribution = .fill
    //        stack.setCustomSpacing(10, after: imageView)
    //        stack.setCustomSpacing(5, after: mainTitleLabel)
    //        return stack
    //    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
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
        }
        
        mainTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(imageView.snp.bottom).offset(10)
            make.left.equalTo(contentView.snp.left)
            make.width.equalTo(100)
            
        }
        
        photoCountLabel.snp.makeConstraints { make in
            make.top.equalTo(mainTitleLabel.snp.bottom).offset(-5)
            make.left.equalTo(contentView.snp.left)
            make.width.equalTo(50)
            
        }
    }
    
    func configuration(model: CompositionalModel) {
        self.imageView.image = UIImage(named: model.image)
        self.mainTitleLabel.text = model.mainTitle
        self.photoCountLabel.text = model.description
    }
}
