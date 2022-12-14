//
//  SABOApp.swift
//  SABO
//
//  Created by Hong jeongmin on 2022/10/08.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
      
    return true
  }
}

@main
struct SABOApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var cardVM = CardViewModel()
    @StateObject var userVM = UserViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(cardVM)
                .environmentObject(userVM)
        }
    }
}
