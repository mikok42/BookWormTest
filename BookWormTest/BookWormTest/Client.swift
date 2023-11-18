//
//  Client.swift
//  BookWormTest
//
//  Created by Linczewski, Mikolaj on 18/11/2023.
//

import Foundation

final class Client: BasicApiClientProtocol {
    let session: URLSession
    
    init(sessionCofnig: URLSessionConfiguration) {
        self.session = URLSession(configuration: sessionCofnig)
    }
    
    convenience init() {
        self.init(sessionCofnig: .default)
    }
}
