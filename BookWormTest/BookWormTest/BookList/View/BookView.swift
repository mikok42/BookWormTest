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
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 15, style: .continuous)
                .fill(.indigo)
            
            LazyHStack(alignment: .center) {
                AsyncImage(url: URL(string: Constants.mediaApiURL + book.cover)) {
                    image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 200)
                        .cornerRadius(15)
                } placeholder: {
                    ProgressView()
                        .frame(width: 150, height: 200)
                }
                VStack(alignment: .leading) {
                    Text("Title: \(book.title)")
                        .lineLimit(nil)
                        .font(.body)
                        .frame(width: 200, alignment: .leading)
                    
                    Text("Author: \(book.author)")
                        .lineLimit(nil)
                        .font(.body)
                        .frame(width: 200, alignment: .leading)
                    Text("Kind: \(book.kind)")
                        .font(.body)
                }
            }
        }
    }
    
}
