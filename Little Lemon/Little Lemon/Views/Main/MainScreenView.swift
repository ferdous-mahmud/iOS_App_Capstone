//
//  GetStartedScreenView.swift
//  Little Lemon
//
//  Created by Ferdous Mahmud Akash on 4/5/23.
//

import SwiftUI

struct MainScreenView: View {
    
    @State private var selectedTab = "Home"
    
    var body: some View {
        
        if UserDefaults.standard.bool(forKey: "isUserLoggedIn") {
            TabView(selection: $selectedTab) {
                HomeScreenView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag("Home")
                
                ProfileScreenView()
                    .tabItem {
                        Label("Profile", systemImage: "person")
                    }
                    .tag("Profile")
            }
            .accentColor(Color("PrimaryColor1"))
        } else {
            HomeScreenView()
        }
    }
}

struct GetStartedScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
