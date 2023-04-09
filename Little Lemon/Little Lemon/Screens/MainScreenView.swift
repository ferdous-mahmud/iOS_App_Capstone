//
//  GetStartedScreenView.swift
//  Little Lemon
//
//  Created by Ferdous Mahmud Akash on 4/5/23.
//

import SwiftUI

struct MainScreenView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    
    var body: some View {
        Text("Main View")
        
        Spacer()
        
        HStack{
            Text(firstName)
            Text(lastName)
        }
        VStack{
            Text(email)
        }
        
        Button("Fetch Data"){
            firstName = UserDefaults.standard.string(forKey: "kfirstName") ?? ""
            lastName = UserDefaults.standard.string(forKey: "klastName") ?? ""
            email = UserDefaults.standard.string(forKey: "kemail") ?? ""
        }
    }
}

struct GetStartedScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
