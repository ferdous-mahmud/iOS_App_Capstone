//
//  ProfileScreenView.swift
//  Little Lemon
//
//  Created by Ferdous Mahmud Akash on 4/10/23.
//

import SwiftUI

struct ProfileScreenView: View {
    
    @State private var isShowingAlart = false
    
    var firstName = UserDefaults.standard.string(forKey:"kfirstName") ?? ""
    var lastName = UserDefaults.standard.string(forKey:"klastName") ?? ""
    var email = UserDefaults.standard.string(forKey:"kemail") ?? ""
    
    var body: some View {
        VStack{
            Image("Profile")
                .resizable()
                .frame(width: 100.0, height: 100.0)
                .padding(.top, 50)
            
            Text("\(firstName) \(lastName)")
            //            Text("Jhon Doe")
                .bold()
                .font(.system(size: 25))
            
            Text("\(email)")
            //            Text("example@gmail.com")
            
            Button {
                isShowingAlart = true
            } label: {
                Text("Log Out")
                    .foregroundColor(.red)
                    .frame(width: 300, height: 50)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 10))
                
            }
            .alert(isPresented: $isShowingAlart) {
                Alert(
                    title: Text("Are you sure you want to Log Out?"),
                    message: Text("Force quit this app! Please login again"),
                    primaryButton: .destructive(Text("Log Out")) {
                        performLogOut()
                    },
                    secondaryButton: .cancel()
                )
            }
            .padding(.top, 100)
            
            
            Spacer()
        }
    }
    
    func performLogOut(){
        // Reset all to initial state
        UserDefaults.standard.set("", forKey: "kfirstName")
        UserDefaults.standard.set("", forKey: "klastName")
        UserDefaults.standard.set("", forKey: "kemail")
        
        UserDefaults.standard.set(false, forKey: "isUserLoggedIn")
        
        // Force Quit the app
        exit(0)
    }
}

struct ProfileScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreenView()
    }
}
