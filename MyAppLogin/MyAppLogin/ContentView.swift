//
//  ContentView.swift
//  MyAppLogin
//
//  Created by 임채성 on 2024/09/28.
//

import SwiftUI
import GoogleSignIn
import Firebase

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: signIn) {
                Text("Google로 로그인")
            }
        }
    }
    
    func signIn() {
        if let clientID = FirebaseApp.app()?.options.clientID {
            print("clientID:", clientID)
            //let config = GIDConfiguration(clientID: clientID)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
