//
//  SignUpScreenView.swift
//  Little Lemon
//
//  Created by Ferdous Mahmud Akash on 4/5/23.
//

import SwiftUI

struct SignUpScreenView: View {
    @State private var firstName = ""
    @State private var email = ""
    @State private var shouldNavigate = false // Keep track of whether to push MainScreenView
    
    var body: some View {
        VStack{
            Spacer()
            Image("SignUp")
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
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                
                TextField("Email", text: $email)
                    .font(.title3)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color("BgColor"))
                    .cornerRadius(50)
                    .padding(.horizontal)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .keyboardType(.emailAddress)
                
                NavigationLink(
                    destination: MainScreenView().navigationBarBackButtonHidden(true),
                    isActive: $shouldNavigate,
                    label: {
                        Text("Sign Up")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color("PrimaryColor2"))
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color("PrimaryColor1"))
                            .cornerRadius(50)
                            .padding()
                            .onTapGesture {
                                if saveCoreData() {
                                    shouldNavigate = true // Set shouldNavigate to true to trigger the navigation
                                }
                            }
                    }
                )
                
                
                
            }
            
            Text("You are completely safe.")
            Text("Read our Terms & Conditions.")
                .onTapGesture {
                    UIApplication.shared.open(URL(string: "https://termify.io/tos")!)
                }
                .foregroundColor(Color("PrimaryColor1"))
            
            
        }
    }
    
    
    func saveCoreData() -> Bool {
        if (firstName != "" && email != ""){
            UserDefaults.standard.set(firstName, forKey: "kfirstName")
            UserDefaults.standard.set(email, forKey: "kemail")
            
            // Ignore Onboarding view when user logedIn
            UserDefaults.standard.set(true, forKey: "isUserLoggedIn")
            
            print("UserDefaults Added")
            resetTextField()
            return true
        } else {
            print("All field are empty!")
            return false
        }
    }
    
    func resetTextField() {
        firstName = ""
        email = ""
    }
}

struct SignUpScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreenView()
    }
}
