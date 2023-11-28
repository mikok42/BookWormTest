//
//  BookViewModel.swift
//  BookWormTest
//
//  Created by Linczewski, Mikolaj on 18/11/2023.
//

import Foundation

@MainActor
final class BookViewModel: BaseViewModel {
    private let url = URL(string: Constants.apiURL + "books/")
    
    @Published private(set) var books: [BookResponse] = []
    @Published private(set) var booksSlice: [BookResponse] = []
    @Published private(set) var error: ApiError?
    @Published var hasError: Bool = false

    func fetchCharacters() async {
        guard let url else { return }
        let request = URLRequest(url: url)
        let result: Result<[BookResponse], ApiError> = await apiClient.fetch(request: request)
        
        switch result {
        case let .success(success):
            self.books = success
            self.booksSlice = Array(books[0...100])
        case let .failure(failure):
            self.error = failure
            self.hasError = true
        }
        
    }
    
}
