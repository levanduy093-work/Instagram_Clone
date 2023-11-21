//
//  FeedViewModel.swift
//  Instagram-demo
//
//  Created by Lê Văn Duy on 11/11/2023.
//

import Foundation
import Firebase

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    init() {
        Task { try await fecthPosts() }
    }
    
    @MainActor
    func fecthPosts() async throws {
        self.posts = try await PostService.fetchFeedPosts()
    }
}
