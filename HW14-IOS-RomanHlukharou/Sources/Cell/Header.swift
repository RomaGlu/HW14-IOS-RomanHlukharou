//
//  Header.swift
//  HW14-IOS-RomanHlukharou
//
//  Created by Роман Глухарев on 10/07/2023.
//

import UIKit
import SnapKit

class AlbumCellHeader: UICollectionReusableView {
    
    static let identifier = "AlbumCellHeader"
    
    // MARK: - Outlets
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
     lazy var seeAllButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("See All", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var divider: UIView = {
       let divider = UIView()
        divider.backgroundColor = .systemGray2
        return divider
    }()
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        clipsToBounds = true
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Error in Cell")
    }
    
    // MARK: - Layout
    
    private func setupHierarchy() {
        addSubview(title)
        addSubview(seeAllButton)
        addSubview(divider)
    }
    
    private func setupLayout() {
        
        title.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(8)
            make.left.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        seeAllButton.snp.makeConstraints { make in
            make.right.bottom.equalToSuperview()
            make.top.equalToSuperview().offset(4)
        }
        
        divider.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.right.equalToSuperview()
            make.height.equalTo(1)
        }
    }
    
    // MARK: - Reuse
    
    override func prepareForReuse() {
        super.prepareForReuse()
        title.text = nil
        self.seeAllButton.isHidden = true
    }
    
}

