//
//  UserStatView.swift
//  Instagram-demo
//
//  Created by Lê Văn Duy on 03/11/2023.
//

import SwiftUI

struct UserStatView: View {
    
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.footnote)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

#Preview {
    UserStatView(value: 4, title: "Post")
}
