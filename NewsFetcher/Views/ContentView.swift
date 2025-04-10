//
//  ContentView.swift
//  NewsFetcher
//
//  Created by Dwi Aji Sobarna on 09/04/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = NewsViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.articles) { article in
                    VStack(alignment: .leading, spacing: 4) {
                        Text(article.title)
                            .font(.headline)
                        Text(article.description)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .padding(.vertical, 4)
                }
            }
            .navigationTitle("Berita")
            .onAppear {
                viewModel.fetchArticles()
            }
        }
    }
}


#Preview {
    ContentView()
}
