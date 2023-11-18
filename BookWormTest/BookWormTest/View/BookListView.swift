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
        .init(repeating: GridItem(.flexible(minimum: 150)), count: 2)
        
    }
    
    var body: some View {
        ScrollView() {
            LazyVGrid(columns: layout, content: {
                ForEach(viewModel.booksSlice, id: \.title) { book in
                    BookView(book: book)
                }
            })
        }
        .task {
            await viewModel.fetchCharacters()
        }
        .alert(viewModel.error?.getDescription ?? "", isPresented: $viewModel.hasError) {
            Text("No books for you :(")
        }
    }
}

#Preview {
    ContentView()
}
