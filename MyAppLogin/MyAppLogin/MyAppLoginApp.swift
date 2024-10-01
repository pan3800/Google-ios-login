//
//  MyAppLoginApp.swift
//  MyAppLogin
//
//  Created by 임채성 on 2024/09/28.
//

import SwiftUI
import FirebaseCore
import GoogleSignIn



class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}


@main
struct MyAppLoginApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject private var authService = AuthServiceModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(authService)
                .onOpenURL { url in
                    GIDSignIn.sharedInstance.handle(url)
                }
        }
    }
}
