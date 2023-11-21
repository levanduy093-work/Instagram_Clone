//
//  Post.swift
//  Instagram-demo
//
//  Created by Lê Văn Duy on 05/11/2023.
//

import Foundation
import Firebase

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let owner: String
    let caption: String
    let likes: Int
    let imageUrl: String
    let timestamp: Timestamp
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(id: NSUUID().uuidString,
              owner: NSUUID().uuidString,
              caption: "This is the caption post by Peter",
              likes: 333,
              imageUrl: "spiderman",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[0]
             ),
        .init(id: NSUUID().uuidString,
              owner: NSUUID().uuidString,
              caption: "This is the caption post by Tony",
              likes: 444,
              imageUrl: "ironman",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[1]
             ),
        .init(id: NSUUID().uuidString,
              owner: NSUUID().uuidString,
              caption: "This is the caption post by Carol",
              likes: 234,
              imageUrl: "captainmarvel",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[3]
             ),
        .init(id: NSUUID().uuidString,
              owner: NSUUID().uuidString,
              caption: "This is the caption post by Thor",
              likes: 673,
              imageUrl: "thor",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[2]
             ),
        .init(id: NSUUID().uuidString,
              owner: NSUUID().uuidString,
              caption: "This is the caption post by Venom",
              likes: 222,
              imageUrl: "venom",
              timestamp: Timestamp(),
              user: User.MOCK_USERS[4]
             ),
    ]
}
