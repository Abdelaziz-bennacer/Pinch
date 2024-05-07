//
//  PageModel.swift
//  Pinch
//
//  Created by Abdelaziz Bennacer on 07/05/2024.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" + imageName
    }
}
