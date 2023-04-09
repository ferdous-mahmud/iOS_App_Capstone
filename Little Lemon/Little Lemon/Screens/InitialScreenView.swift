//
//  InitialScreenView.swift
//  Little Lemon
//
//  Created by Ferdous Mahmud Akash on 4/9/23.
//

import SwiftUI

struct InitialScreenView: View {
    
    var body: some View {
        if UserDefaults.standard.bool(forKey: "isUserLoggedIn") {
            MainScreenView()
        } else {
            WelcomeScreenView()
        }
    }
}

struct InitialScreenView_Previews: PreviewProvider {
    static var previews: some View {
        InitialScreenView()
    }
}
