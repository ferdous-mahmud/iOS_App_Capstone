//
//  GetStartedScreenView.swift
//  Little Lemon
//
//  Created by Ferdous Mahmud Akash on 4/5/23.
//

import SwiftUI

struct MainScreenView: View {
    
    var body: some View {
        Text("Main View")
        
        Button("Show Email"){
          let mail = UserDefaults.standard.bool(forKey: "email")
          print(mail)
        }
    }
}

struct GetStartedScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
