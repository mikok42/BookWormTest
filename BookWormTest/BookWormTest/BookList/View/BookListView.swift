//
//  ContentView.swift
//  BookWormTest
//
//  Created by Linczewski, Mikolaj on 18/11/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = BookViewModel()
    
    var layout: [GridItem] {
        [GridItem(.fixed(200)) ]
    }
    
    var body: some View {
        ScrollView() {
            LazyVStack {
                ForEach(viewModel.booksSlice, id: \.title) { book in
                    BookView(book: book)
                        .frame(height: 200)
                        .padding(10)
                }
            }.task {
                await viewModel.fetchCharacters()
            }
            .alert(viewModel.error?.getDescription ?? "", isPresented: $viewModel.hasError) {
                Text("No books for you :(")
            }
        }
    }
}

#Preview {
    ContentView()
}
