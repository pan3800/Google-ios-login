//
//  LoginView.swift
//  Google-ios-login
//
//  Created by 임채성 on 2024/09/25.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Image("profile_login")
                .resizable()
                .frame(width: 75, height: 75)
                .clipShape(Circle())
            
            
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
