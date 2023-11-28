//
//  BookDetailsView.swift
//  BookWormTest
//
//  Created by Linczewski, Mikolaj on 28/11/2023.
//

import SwiftUI

struct BookDetailsView: View {
    let url: String?
    @StateObject var viewModel: BookDetailsViewModel = BookDetailsViewModel()
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
        }
    }
    
    
}

#Preview {
    BookDetailsView(url: "https://wolnelektury.pl/api/books/20-000-mil-podmorskiej-zeglugi/")
}
