//
//  SignInWithGoogleTutorialApp.swift
//  SignInWithGoogleTutorial
//
//  Created by Toni Nichev on 1/3/24.
//

import SwiftUI

@main
struct SignInWithGoogleTutorialApp: App {
    
    @StateObject var userAuthModel: UserAuthModel = UserAuthModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
            .environmentObject(userAuthModel)
        }
    }
}
