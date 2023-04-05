//
//  SwiftUIView.swift
//  Little Lemon
//
//  Created by Ferdous Mahmud Akash on 4/5/23.
//

import SwiftUI

struct OnboardingView: View {
    
    var body: some View {
        NavigationView{
            VStack {
                WelcomeScreenView()
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
