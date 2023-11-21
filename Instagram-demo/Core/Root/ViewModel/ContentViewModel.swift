//
//  ContentViewModel.swift
//  Instagram-demo
//
//  Created by Lê Văn Duy on 06/11/2023.
//

import Foundation
import FirebaseAuth
import Firebase
import Combine

class ContentViewModel: ObservableObject {
    
    private let servive = AuthService.shared
    private var cancellables = Set<AnyCancellable>()
    
    @Published var userSession: FirebaseAuth.User?
    @Published var currentUser: User?
    
    init() {
        setupSubscribers()
    }
    
    func setupSubscribers() {
        servive.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellables)
        
        servive.$currentUser.sink { [weak self] currentUser in
            self?.currentUser = currentUser
        }
        .store(in: &cancellables)
    }
}
