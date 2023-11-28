//
//  BaseViewModel.swift
//  BookWormTest
//
//  Created by Linczewski, Mikolaj on 28/11/2023.
//

import Foundation

class BaseViewModel: ObservableObject {
    let apiClient: Client = Client()
}
