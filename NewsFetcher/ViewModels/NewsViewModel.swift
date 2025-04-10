//
//  NewsViewModel.swift
//  NewsFetcher
//
//  Created by Dwi Aji Sobarna on 09/04/25.
//

import Foundation

class NewsViewModel: ObservableObject {
    @Published var articles: [Article] = []
    
    func fetchArticles() {
        print("📡 Memulai fetch artikel...")

        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {
            print("❌ URL tidak valid")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
                return
            }

            if let data = data {
                print("📦 Data diterima: \(String(data: data, encoding: .utf8) ?? "Tidak bisa dibaca")")

                do {
                    let decoded = try JSONDecoder().decode([Article].self, from: data)
                    DispatchQueue.main.async {
                        print("✅ Artikel berhasil di-fetch: \(decoded.count) item")
                        self.articles = decoded
                    }
                } catch {
                    print("❌ Gagal decode JSON: \(error)")
                }
            } else {
                print("❌ Tidak ada data")
            }
        }.resume()
    }

}
