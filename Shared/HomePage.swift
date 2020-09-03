//
//  HomePage.swift
//  SwiftUIAnimation
//
//  Created by AJ Picard on 9/2/20.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        ZStack {
            ScrollView (showsIndicators: false){
                LazyVGrid(
                    columns: [GridItem(.adaptive(minimum: 200), spacing: -10)]
                ) {
                    ForEach(0 ..< 10) { item in
                        Cards()
                            .padding(.top, 40)
                    }
                }
            }
            .frame(maxWidth: .infinity)
          
        }
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage()
    }
}

struct Cards: View {
    var body: some View {
        VStack {
            Text("Sample Cards!")
                .font(.system(size: 34, weight: .bold, design: .rounded))
                .foregroundColor(.white)
            
            Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                Text("View")
            }
            .frame(width: 140, height: 44)
            .background(Color(#colorLiteral(red: 0.3054472757, green: 0.1126225274, blue: 0.6538553175, alpha: 1)))
            .foregroundColor(.white)
            .cornerRadius(20)
            .padding(.top, 30)
        }
        .frame(width: 180, height: 240)
        .background(Color(#colorLiteral(red: 0.4392156863, green: 0.1450980392, blue: 0.9098039216, alpha: 1)))
        .cornerRadius(30)
        .shadow(color: Color(#colorLiteral(red: 0.3054472757, green: 0.1126225274, blue: 0.6538553175, alpha: 1)).opacity(0.5), radius: 25, x: 0, y: 15)
    }
}
