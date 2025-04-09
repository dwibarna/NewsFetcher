//
//  Article.swift
//  NewsFetcher
//
//  Created by Dwi Aji Sobarna on 09/04/25.
//

import Foundation

struct Article: Identifiable {
    let id = UUID()
    let title: String
    let description: String
}
