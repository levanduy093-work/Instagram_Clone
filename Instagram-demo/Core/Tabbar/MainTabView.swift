//
//  MainTabBar.swift
//  Instagram-demo
//
//  Created by Lê Văn Duy on 03/11/2023.
//

import SwiftUI

struct MainTabView: View {
    
    let user: User
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            FeedView()
                .onAppear {
                    selectedIndex = 0
                }
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            SearchView()
                .onAppear {
                    selectedIndex = 1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            UploadPostView(tabIndex: $selectedIndex)
                .onAppear {
                    selectedIndex = 2
                }
                .tabItem {
                    Image(systemName: "plus.app")
                }.tag(2)
            
            Text("Notification")
                .onAppear {
                    selectedIndex = 3
                }
                .tabItem {
                    Image(systemName: "heart.fill")
                }.tag(3)
            
            CurrentUserProfileView(user: user)
                .onAppear {
                    selectedIndex = 4
                }
                .tabItem {
                    Image(systemName: "person")
                }.tag(4)
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabView(user: User.MOCK_USERS[0])
}
