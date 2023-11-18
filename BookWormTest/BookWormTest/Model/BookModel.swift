//
//  BookModel.swift
//  BookWormTest
//
//  Created by Linczewski, Mikolaj on 18/11/2023.
//

import Foundation

struct BookResponse: Codable {
    let kind: String
    let title: String
    let author: String
    let cover: String
}
