//
//  SearchViewController.swift
//  HW14-IOS-RomanHlukharou
//
//  Created by Роман Глухарев on 11/07/2023.
//

import UIKit
import SnapKit

class ForYouViewController: UIViewController {
    
    //MARK: - Outlets
    
    private lazy var label: UILabel = {
       let label = UILabel()
        label.text = "Go to Album tab"
        label.textColor = .magenta
        label.font = UIFont.boldSystemFont(ofSize: 40)
        label.textAlignment = .center
        return label
    }()
    
    //MARK: - Lyfecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    //MARK: - Layout
    
    func setupView() {
        view.backgroundColor = .systemBackground
    }
     
    func setupHierarchy() {
        view.addSubview(label)
    }
    
    func setupLayout() {
        label.snp.makeConstraints { make in
            make.centerX.equalTo(view.snp.centerX)
            make.centerY.equalTo(view.snp.centerY)
            make.width.equalTo(500)
            make.height.equalTo(100)
        }
    }
}
