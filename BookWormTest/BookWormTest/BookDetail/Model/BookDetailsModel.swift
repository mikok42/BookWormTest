//
//  BookDetailsModel.swift
//  BookWormTest
//
//  Created by Linczewski, Mikolaj on 28/11/2023.
//

import Foundation

struct BookDetailsModel: Codable {
    let title: String
    let epochs: [DetailModel]
    let genres: [DetailModel]
    let kinds: [DetailModel]
    let cover: String
}

struct DetailModel: Codable {
    let name: String
    let slug: String
}

