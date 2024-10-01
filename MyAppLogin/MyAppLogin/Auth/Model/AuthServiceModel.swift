//
//  AuthServiceModel.swift
//  MyAppLogin
//
//  Created by 임채성 on 2024/09/30.
//

import Foundation
import Firebase
import GoogleSignIn

class AuthServiceModel: ObservableObject {
    
    func googleSignIn () {
        guard  let clientID = FirebaseApp.app()?.options.clientID else { return }
        let config =  GIDConfiguration (clientID: clientID)
        
//        guard let windowScene = UIApplication .shared.connectedScenes.first as? UIWindowScene else { return }
//        guard let rootViewController = windowScene.windows.first?.rootViewController else { return }
    }
}
