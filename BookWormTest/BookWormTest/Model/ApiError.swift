//
//  ApiError.swift
//  BookWormTest
//
//  Created by Linczewski, Mikolaj on 18/11/2023.
//

import Foundation

enum ApiError: Error {
    case requestFailed(description: String)
}

extension ApiError {
    var getDescription: String {
        return switch self {
        case let .requestFailed(description):
            description
        }
    }
        
}
