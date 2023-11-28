//
//  BookDetailsViewModel.swift
//  BookWormTest
//
//  Created by Linczewski, Mikolaj on 28/11/2023.
//

import Foundation

class BookDetailsViewModel: BaseViewModel {
    @Published private(set) var bookDetails: BookDetailsModel?
    @Published private(set) var error: ApiError?
    
    func fetchBookDetails(urlString: String) async {
        guard let url = URL(string: urlString) else { error = .requestFailed(description: "no url"); return }
        let request = URLRequest(url: url)
        let result: Result<BookDetailsModel, ApiError> = await apiClient.fetch(request: request)
        
        switch result {
        case let .success(success):
            self.bookDetails = success
        case let .failure(failure):
            self.error = failure
        }
    }
}
