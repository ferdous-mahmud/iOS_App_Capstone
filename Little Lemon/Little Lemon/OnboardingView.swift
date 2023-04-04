//
//  SwiftUIView.swift
//  Little Lemon
//
//  Created by Ferdous Mahmud Akash on 4/5/23.
//

import SwiftUI

struct OnboardingView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    
    func resetRegister(){
        firstName = ""
        lastName = ""
        email = ""
    }
    
    var body: some View {
        VStack{
            Spacer()
            TextField("First Name", text: $firstName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 30)
            TextField("Last Name", text: $lastName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 30)
            TextField("email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal, 30)
            
            Button("Register") {
                print(firstName, lastName)
                print(email)
                
                resetRegister()
            }
            .buttonStyle(.bordered)
            .tint(.green)
            .padding(.top, 10)
       
            Spacer()
            Spacer()
            Spacer()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
