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
    
    @State private var text = ""
    @State private var isEditing = false
    
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
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.custom("MarkaziText-Medium", size: 64))
                        .foregroundColor(Color("PrimaryColor1"))
                    
                    
                    HStack{
                        VStack{
                            Text("Chicago")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.custom("MarkaziText-Regular", size: 40))
                                .foregroundColor(Color("BgColor"))
                                .padding(.bottom, 5)
                            
                            Text("We are a family owned Mediterranean restaurant, focused on traditional recipes served with a modern twist")
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .font(.custom("Karla-Medium", size: 18))
                                .foregroundColor(Color("BgColor"))
                        }
                        
                        Image("HeroImage")
                            .resizable()
                            .frame(width: 142, height: 153)
                            .cornerRadius(16)
                    }
                    .padding(.top, -70)
                    
                    // MARK: Search Box
                    Group{
                        TextField("🔍", text: $text)
                            .padding(7)
                            .padding(.horizontal, 10)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .onTapGesture {
                                self.isEditing = true
                            }
                        
                        if isEditing {
                            Button(action: {
                                self.isEditing = false
                                self.text = ""
                                
                            }) {
                                Text("Cancel")
                            }
                            .frame(width: 80, height: 30)
                            .background(Color("PrimaryColor1"))
                            .foregroundColor(Color("PrimaryColor2"))
                            .cornerRadius(8)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.top, -51)
                            .padding(.trailing, 3)
                            
                        }
                        
                    }
                    .padding(.top, 10)
                    
                    Spacer()
                }
                .padding(.leading, 40)
                .padding(.trailing, 40)
                
            }
            .frame(width: 428.00, height: 332.0)
            .background(Color("PrimaryColor2"))
            
            
            
            // MARK: Menu Breakdown
            VStack{
                Text("Order for delivery")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom("Karla-ExtraBold", size: 20))
                    .textCase(.uppercase)
                    .padding(.top)
                    .foregroundColor(Color("SecondaryColor4"))
                
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        CustomButton(name: "Starters")
                        CustomButton(name: "Mains")
                        CustomButton(name: "Deserts")
                        CustomButton(name: "Sides")
                    }
                }
            }
            .padding(.leading, 25)
            .padding(.trailing, 25)
            
            Line()
                .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                .frame(height: 1)
                .padding()
            
            
            
            // MARK: Food Menu List
//            VStack{
//                MenuItem(menuName: "Chicago", menuDescription: "The famous greek salad of rrispy lettuses, papers and more ingredient", price: 12.99)
//            }
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    MenuItem(menuName: "Chicago", menuDescription: "The famous greek salad of rrispy lettuses, papers and more ingredient", price: 12.99, image: "Greek salad")
                    MenuItem(menuName: "Brushetta", menuDescription: "Our Bruschetta is made form grilled bread that has been smassed with", price: 7.99, image: "Bruschetta")
                }
            }
            
            Spacer()
            
        }
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}


// MARK: Custom Button
struct CustomButton: View {
    var name: String
    
    var body: some View {
        Text(name)
            .frame(width: 80, height: 40)
            .foregroundColor(Color("SecondaryColor4"))
            .font(.custom("Karla-Medium", size: 18))
            .background(Color("BgColor"))
            .cornerRadius(8)
    }
}


// MARK: Line
struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint(x: 0, y: 0))
        path.addLine(to: CGPoint(x: rect.width, y: 0))
        return path
    }
}

struct MenuItem: View {
    var menuName: String
    var menuDescription: String
    var price: Double
    var image: String
    
    
    var body: some View {
        HStack{
            VStack{
                // Menu Name
                Text(menuName)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom("Karla-Bold", size: 18))
                    .foregroundColor(Color("SecondaryColor4"))
                    .padding(.bottom, 1)
                
                // Menu Description
                Text(menuDescription)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom("Karla-Regular", size: 16))
                    .foregroundColor(Color("SecondaryColor4"))
                
                
                // Menu Price
                Text(String(format: "$%.2f", price))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.custom("Karla-Medium", size: 16))
                    .foregroundColor(Color("SecondaryColor4"))
                    .padding(.top, 1)
            }
            
            Image(image)
                .resizable()
                .frame(width: 78, height: 78)
                .padding(.top, 35)
        }
        .padding(.leading, 25)
        .padding(.trailing, 25)
    }
}
