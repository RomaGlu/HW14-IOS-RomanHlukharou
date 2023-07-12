//
//  CompositionalModel.swift
//  UICollectionView
//
//  Created by Роман Глухарев on 06/07/2023.
//

import Foundation

struct CompositionalModel: Hashable {
    var mainTitle: String?
    var description: String?
    var image: String
    var numberOfItem: Int?
}

extension CompositionalModel {
    static let modelsArray: [[CompositionalModel]] = [
        [CompositionalModel(mainTitle: "Recents", description: "\(String(Int.random(in: 0...100)))", image: "myPhoto"),
         CompositionalModel(mainTitle: "WhatsApp", description: "\(String(Int.random(in: 0...100)))", image: "catTwo"),
         CompositionalModel(mainTitle: "Favorites", description: "\(String(Int.random(in: 0...100)))", image: "catCrazy"),
         CompositionalModel(mainTitle: "Snapchat", description: "\(String(Int.random(in: 0...100)))", image: "catFour"),
         CompositionalModel(mainTitle: "Instagram", description: "\(String(Int.random(in: 0...100)))", image: "myWork")
        ],
        [CompositionalModel(mainTitle: "Family", description: "\(String(Int.random(in: 0...100)))", image: "catRest")
        ],
        [CompositionalModel(mainTitle: "People", description: "\(String(Int.random(in: 0...100)))", image: "people"),
         CompositionalModel(mainTitle: "Places",description: "\(String(Int.random(in: 0...100)))", image: "places")
        ],
        [CompositionalModel(mainTitle: "Videos", description: "\(String(Int.random(in: 0...100)))", image: "video"),
         CompositionalModel(mainTitle: "Selfies", description: "\(String(Int.random(in: 0...100)))", image: "person.crop.square"),
         CompositionalModel(mainTitle: "Portrait", description: "\(String(Int.random(in: 0...100)))", image: "cube"),
         CompositionalModel(mainTitle: "Time-lapse", description: "\(String(Int.random(in: 0...100)))", image: "timelapse"),
         CompositionalModel(mainTitle: "Slo-mo", description: "\(String(Int.random(in: 0...100)))", image: "slowmo"),
         CompositionalModel(mainTitle: "Screenshots", description: "\(String(Int.random(in: 0...100)))", image: "camera.viewfinder"),
         CompositionalModel(mainTitle: "Screen Recordings", description: "\(String(Int.random(in: 0...100)))", image: "record.circle")
         ],
        [CompositionalModel(mainTitle: "Imports", description: "\(String(Int.random(in: 0...100)))", image: "square.and.arrow.down"),
         CompositionalModel(mainTitle: "Hidden", description: "lock.fill", image: "eye.slash"),
         CompositionalModel(mainTitle: "Recently Deleted", description: "lock.fill", image: "trash")
         ]
    ]
}
