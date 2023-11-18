//
//  BasicNetworkClient.swift
//  BookWormTest
//
//  Created by Linczewski, Mikolaj on 18/11/2023.
//

import Foundation

protocol BasicApiClientProtocol {
    var session: URLSession { get }
    func fetch<T: Codable>(request: URLRequest) async -> Result<T, ApiError>
}

extension BasicApiClientProtocol {
    func fetch<T: Codable>(request: URLRequest) async -> Result<T, ApiError> {
        do {
            let result = try await session.data(for: request)
            guard let response = result.1 as? HTTPURLResponse else {
                return .failure(ApiError.requestFailed(description: "sadge"))
            }
            let data = try JSONDecoder().decode(T.self, from: result.0)
            return .success(data)
        } catch {
            return .failure(.requestFailed(description: "error caught"))
        }
        
        
    }
}
