//
//  WelcomeScreenView.swift
//  Little Lemon
//
//  Created by Ferdous Mahmud Akash on 4/5/23.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        VStack{
            Spacer()
            Image("Login")
                .resizable()
                .scaledToFit()
            Spacer()
            GetStartedButton(destinationView: MainScreenView())
                .padding(.bottom)
            SignUpButton(destinationView: SignUpScreenView())
                .padding(.bottom)
            HStack{
                Text("New around here?")
                    .foregroundColor(Color("PrimaryColor2"))
                NavigationLink(destination: SignInScreenView()) {
                    Text("Sing in")
                        .foregroundColor(Color("PrimaryColor1"))
                }
                
            }
            .padding()
        }
        .padding()
    }
}

struct SignUpButton<Content: View>: View {
    @State private var isShowSignInView = false
    private var destinationView: Content
    
    
    init(destinationView: Content) {
        self.destinationView = destinationView
    }
    
    var body: some View {
        
        NavigationLink {
            destinationView
        } label: {
            Text("Sign Up")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color("PrimaryColor1"))
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color("PrimaryColor2"))
                .cornerRadius(50)
        }
        
    }
}

struct GetStartedButton<Content: View>: View {
    @State private var isShowSignInView = false
    private var destinationView: Content
    
    
    init(destinationView: Content) {
        self.destinationView = destinationView
    }
    
    var body: some View {
        
        NavigationLink {
            destinationView
        } label: {
            Text("Get Started")
                .font(.title3)
                .fontWeight(.bold)
                .foregroundColor(Color("PrimaryColor2"))
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color("PrimaryColor1"))
                .cornerRadius(50)
        }
        
    }
}



struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
