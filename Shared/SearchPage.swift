//
//  SearchPage.swift
//  SwiftUIAnimation
//
//  Created by AJ Picard on 9/2/20.
//

import SwiftUI

struct SearchPage: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Search For A Card")
                .font(.system(size: 19, weight: .bold, design: .rounded))
            Spacer()
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.leading, 15)
                    .padding(.trailing, 5)
                TextField("Search Cards...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .accentColor(Color.white)
                    .padding(.trailing, 15)
            }
            .frame(width: 250, height: 44)
            .background(Color(#colorLiteral(red: 0.9352417318, green: 0.9229452702, blue: 0.989708915, alpha: 1)))
            .cornerRadius(30)
            .shadow(color: Color(#colorLiteral(red: 0.4392156863, green: 0.1450980392, blue: 0.9098039216, alpha: 1)).opacity(0.2), radius: 25, x: 0, y: 15)
            .offset(y: -50)
        }
    }
}

struct SearchPage_Previews: PreviewProvider {
    static var previews: some View {
        SearchPage()
    }
}
