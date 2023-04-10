//
//  HomeScreenView.swift
//  Little Lemon
//
//  Created by Ferdous Mahmud Akash on 4/10/23.
//

import SwiftUI

struct HomeScreenView: View {
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
            
            // MARK: Hero
            HStack{
                VStack{
                    Text("Little Lemon")
                        .font(.custom("MarkaziText-Medium", size: 64))
                        .foregroundColor(Color("PrimaryColor1"))
                }
            }
            .frame(width: 428.00, height: 332.0)
            .background(Color("PrimaryColor2"))
            
            Spacer()
            
            // MARK: Menu Breakdown
            
            // MARK: Food Menu List
            
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
