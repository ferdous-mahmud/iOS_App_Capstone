//
//  WelcomeScreenView.swift
//  Little Lemon
//
//  Created by Ferdous Mahmud Akash on 4/5/23.
//

import SwiftUI

struct WelcomeScreenView: View {
    var body: some View {
        VStack{
            Spacer()
            Image("Login")
                .resizable()
                .scaledToFit()
            Spacer()
            CustomButton(title: "Get Started", PrimaryColor: "PrimaryColor1", ForegroundColor: "SecondaryColor4")
                .padding(.bottom)
            CustomButton(title: "Login", PrimaryColor: "PrimaryColor2", ForegroundColor: "PrimaryColor1")
            HStack{
                Text("New around here?")
                    .font(.title3)
                    .foregroundColor(Color("SecondaryColor4"))
                Text("Sing in")
                    .font(.title3)
                    .foregroundColor(Color("PrimaryColor1"))
            }
            .padding()
        }
        .padding()
    }
}

struct CustomButton: View {
    var title: String
    var PrimaryColor: String
    var ForegroundColor: String
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundColor(Color(ForegroundColor))
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color(PrimaryColor))
            .cornerRadius(50)
    }
}



struct WelcomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreenView()
    }
}
