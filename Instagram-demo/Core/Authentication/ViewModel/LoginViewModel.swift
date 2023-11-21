//
//  LoginViewModel.swift
//  Instagram-demo
//
//  Created by Lê Văn Duy on 06/11/2023.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
