//
//  Article.swift
//  NewsFetcher
//
//  Created by Dwi Aji Sobarna on 09/04/25.
//

import Foundation

struct Article: Identifiable, Codable {
    let id: Int
    let title: String
    let body: String
    
    var description: String {
        body
    }
}
