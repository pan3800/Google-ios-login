//
//  LoginView.swift
//  MyAppLogin
//
//  Created by 임채성 on 2024/10/01.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var authServiceModel: AuthServiceModel
    
    var body: some View {
        VStack {
            
            Image("KakaoTalk_Photo_2024-09-19-15-14-53")
                .resizable()
                .frame(width: 75, height: 75)
                .clipShape(Circle())
            
            Text("Click in Login")
            
            Button {
                print ( "Google 로그인 탭됨" )
                authServiceModel.googleSignIn()
            } label: {
                Image("ios_light_sq_ctn")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 150)
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
