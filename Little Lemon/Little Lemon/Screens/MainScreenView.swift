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
        VStack{
            
            // MARK: Header
            HStack{
                Spacer()
                Image("Logo")
                    .resizable()
                    .frame(width: 165.00, height: 45.50, alignment: .center)
                    .padding(.leading, 50)
                
                Spacer()
                
                Image("Profile")
                    .resizable()
                    .frame(width: 50.00, height: 50.00, alignment: .trailing)
                    .padding(.trailing, 38)
                
            }
            
            Spacer()
            
            // MARK: Hero
            HStack{
                
            }
            
            // MARK: Menu Breakdown
            
            // MARK: Food Menu List
            
        }
    }
}

struct GetStartedScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
