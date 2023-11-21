//
//  User.swift
//  Instagram-demo
//
//  Created by Lê Văn Duy on 05/11/2023.
//

import Foundation
import Firebase

struct User: Identifiable, Hashable, Codable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
    
    var isCurrentUser: Bool {
        guard let currentUid = Auth.auth().currentUser?.uid else { return false}
        return currentUid == id
    }
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString,
              username: "spiderman",
              profileImageUrl: nil,
              fullname: "Peter Parker",
              bio: "The Kid Supper Hero",
              email: "spiderman@gmail.com"),
        .init(id: NSUUID().uuidString,
              username: "ironman",
              profileImageUrl: nil,
              fullname: "Tony Stark",
              bio: "Genius of marvel series",
              email: "ironman@gmail.com"),
        .init(id: NSUUID().uuidString,
              username: "thor",
              profileImageUrl: nil,
              fullname: "Thor Odin",
              bio: "God of thunder",
              email: "thorodin@gmail.com"),
        .init(id: NSUUID().uuidString,
              username: "captainmarvel",
              profileImageUrl: nil,
              fullname: "Carol Danvers",
              bio: "Supper Hero of Galaxy",
              email: "captainmarvel@gmail.com"),
        .init(id: NSUUID().uuidString,
              username: "venom",
              profileImageUrl: nil,
              fullname: "Venom",
              bio: "Weird",
              email: "venom@gmail.com")
    ]
}

