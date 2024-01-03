//
//  ContentView.swift
//  SignInWithGoogleTutorial
//
//  Created by Toni Nichev on 1/3/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var userAuthModel: UserAuthModel
    //@State var userAuthModel = UserAuthModel()
    
    fileprivate func SignInButton() ->Button<Text> {
        Button(action: {
            userAuthModel.signIn()
        }, label: {
            Text("Sign In")
        })
    }
    
    fileprivate func SignOutButton() -> Button<Text> {
        Button(action: {
            userAuthModel.signOut()
        }, label: {
            Text("Sign Out")
        })
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)


            if userAuthModel.isLoggedIn {
                Text("Hello: \(userAuthModel.givenName)")
                SignOutButton()
            } else {
                SignInButton()
            }
            
        }
    }
}

#Preview {
    ContentView().environmentObject(UserAuthModel())
}
