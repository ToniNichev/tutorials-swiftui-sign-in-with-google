//
//  ContentView.swift
//  SignInWithGoogleTutorial
//
//  Created by Toni Nichev on 1/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userAuthModel: UserAuthModel
    
    fileprivate func signInButton() -> some View {
        HStack {
            Image("GoogleSignInButton")
                .resizable()
                .frame(width: 50, height: 50)
            
            Button(action: {
                userAuthModel.signIn()
            }, label: {
                Text("Sign In")
            })
        }
    }
    
    fileprivate func signOutButton() -> Button<Text> {
        Button(action: {
            userAuthModel.signOut()
        }, label: {
            Text("Sign Out")
        })
    }
    
    fileprivate func profilePic() -> some View {
        AsyncImage(url: URL(string: userAuthModel.profilePicUrl))
            .frame(width: 100,height: 100)
    }
    
    var body: some View {
        VStack {
            if userAuthModel.isLoggedIn {
                profilePic()
                Text("Hello: \(userAuthModel.givenName)")
                signOutButton()
            } else {
                signInButton()
            }
            
        }
    }
}

#Preview {
    ContentView().environmentObject(UserAuthModel())
}
