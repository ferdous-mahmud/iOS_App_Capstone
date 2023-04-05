//
//  SignInScreenView.swift
//  Little Lemon
//
//  Created by Ferdous Mahmud Akash on 4/5/23.
//

import SwiftUI

struct SignInScreenView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    
    var body: some View {
        VStack{
            
            
            Spacer()
            Image("SignIn")
                .resizable()
                .scaledToFit()
            Spacer()
            
            Group{
                TextField("First Name", text: $firstName)
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color("BgColor"))
                    .cornerRadius(50)
                    .padding(.horizontal)
                
                TextField("Last Name", text: $lastName)
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color("BgColor"))
                    .cornerRadius(50)
                    .padding(.horizontal)
                
                
                TextField("Email", text: $email)
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color("BgColor"))
                    .cornerRadius(50)
                    .padding(.horizontal)
                
                SignInButton(destinationView: MainScreenView())
                    .padding()
            }
            
            Text("You are completely safe.")
            Text("Read our Terms & Conditions.")
                .onTapGesture {
                    UIApplication.shared.open(URL(string: "https://termify.io/tos")!)
                }
                .foregroundColor(Color("PrimaryColor1"))
            
            
        }
    }
}


struct SignInButton<Content: View>: View {
    @State private var isShowSignInView = false
    private var destinationView: Content
    
    
    init(destinationView: Content) {
        self.destinationView = destinationView
    }
    
    var body: some View {
        
        NavigationLink {
            destinationView
        } label: {
            Text("Sign In")
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


struct SignInScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreenView()
    }
}
