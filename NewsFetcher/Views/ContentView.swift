//
//  ContentView.swift
//  NewsFetcher
//
//  Created by Dwi Aji Sobarna on 09/04/25.
//

import SwiftUI

struct ContentView: View {
    
    let articles: [Article] = [
        Article(
            title: "SwiftUI 4 Released",
            description: "Explore what's new in SwiftUI."
        ),
        Article(
            title: "iOS 18 Leaks",
            description: "Here's what we know so far."
        ),
    ]
    
    var body: some View {
        
        NavigationStack {
            List {
                ForEach(articles) { article in
                    VStack(alignment: .leading,
                           spacing: 4) {
                        Text(article.title)
                            .font(.headline)
                        Text(article.description)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                           .padding(.vertical, 4)
                }
                .navigationTitle("Berita")
            }
        }

    }
}

#Preview {
    ContentView()
}
