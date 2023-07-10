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
        [CompositionalModel(mainTitle: "Recents", description: nil, image: "photo"),
         CompositionalModel(mainTitle: "WhatsApp", description: nil, image: "catTwo"),
         CompositionalModel(mainTitle: "Favorites", description: nil, image: "catCrazy"),
         CompositionalModel(mainTitle: "Snapchat", description: nil, image: "catFOur"),
         CompositionalModel(mainTitle: "Instagram", description: nil, image: "myWork")
        ],
        [CompositionalModel(mainTitle: "Family", description: nil, image: "catRest")
        ],
        [CompositionalModel(mainTitle: "People", description: nil, image: "catThree"),
         CompositionalModel(mainTitle: "Places",description: nil, image: "places")
        ],
        [CompositionalModel(mainTitle: "Videos", description: nil, image: "video"),
         CompositionalModel(mainTitle: "Selfies", description: nil, image: "person.crop.square"),
         CompositionalModel(mainTitle: "Portrait", description: nil, image: "cube"),
         CompositionalModel(mainTitle: "Time-lapse", description: nil, image: "timelapse"),
         CompositionalModel(mainTitle: "Slo-mo", description: nil, image: "slowmo"),
         CompositionalModel(mainTitle: "Screenshots", description: nil, image: "camera.viewfinder"),
         CompositionalModel(mainTitle: "Screen Recordings", description: nil, image: "record.circle")
         ],
        [CompositionalModel(mainTitle: "Imports", description: nil, image: "square.and.arrow.down"),
         CompositionalModel(mainTitle: "Hidden", description: nil, image: "eye.slash"),
         CompositionalModel(mainTitle: "Recently Deleted", description: nil, image: "trash")
         ]
    ]
}
