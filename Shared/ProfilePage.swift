//
//  ProfilePage.swift
//  SwiftUIAnimation
//
//  Created by AJ Picard on 9/2/20.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Hello")
                        .font(.system(size: 19, weight: .bold, design: .rounded))
                    Text("AJ Picard")
                        .font(.system(size: 34, weight: .bold, design: .rounded))
                }
                Spacer()
                Image("Aj")
                    .resizable()
                    .frame(width: 40, height: 40)
            }
            .padding(.horizontal, 25)
            .padding(.top, 30)
            Spacer()
            VStack {
                Text("I love playing basketball! Huge Lebron Fan! Also obessesed with Appple and anything involving technology. Currently pushing my own startup called Clava & until thats off the ground pushing my own Studio Sauce Designs!")
                    .font(.system(size: 19, weight: .medium, design: .rounded))
                
                Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Get in touch.")
                        .font(.system(size: 17))
                        .bold()
                }
                .frame(width: 180, height: 54)
                .foregroundColor(.white)
                .background(Color(#colorLiteral(red: 0.4392156863, green: 0.1450980392, blue: 0.9098039216, alpha: 1)))
                .cornerRadius(30)
                .shadow(color: Color(#colorLiteral(red: 0.4392156863, green: 0.1450980392, blue: 0.9098039216, alpha: 1)).opacity(0.4), radius: 25, x: 0 , y: 15)
                .padding(.top, 50)
            }
            .padding(.horizontal, 25)
            Spacer()
        }
    }
}

struct ProfilePage_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
