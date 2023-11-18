//
//  BookView.swift
//  BookWormTest
//
//  Created by Linczewski, Mikolaj on 18/11/2023.
//

import Foundation
import SwiftUI

struct BookView: View {
    var book: BookResponse
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(.indigo)
            HStack {
                Spacer(minLength: 5)
                VStack {
                    AsyncImage(url: URL(string: "https://wolnelektury.pl/media/" + book.cover)) {
                        image in
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                            .cornerRadius(15)
                    } placeholder: {
                        ProgressView()
                            .frame(height: 100)
                    }
                    Text("Title: \(book.title)")
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Author: \(book.author)")
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text("Kind: \(book.kind)")
                        .font(.body)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer(minLength: 5)
                }
            }

        }
    }
    
}
