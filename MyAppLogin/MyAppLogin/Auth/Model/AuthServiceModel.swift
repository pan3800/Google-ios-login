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
        if GIDSignIn.sharedInstance.hasPreviousSignIn() { // 코드는 사용자가 이전에 Google 계정으로 성공적으로 로그인한 적이 있는지 확인하는 메서드
            GIDSignIn.sharedInstance.restorePreviousSignIn() { [unowned self] user, error in
                    authenticateUser(for: user, with: error)
            }
        } else {
            guard let clientID = FirebaseApp.app()?.options.clientID else { return }
            print("clientID:", clientID)
            //let configuration = GIDConfiguration(clientID: clientID)
        }
    }
    
    func authenticateUser(for user: GIDGoogleUser?, with error: Error?) {
        
    }

}
