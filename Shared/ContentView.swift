//
//  ContentView.swift
//  Shared
//
//  Created by AJ Picard on 9/2/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var Home = false
    @State var Search = false
    @State var Profile = false
    
    var body: some View {
        VStack {
            ZStack {
                HomePage()
                    .offset(x: Search ? -1000 : 0)
                    .offset(x: Profile ? -1000 : 0)
                    .padding(.top, -20)
                    .animation(.spring())
                SearchPage()
                    .offset(x: Search ? 0 : 1000)
                    .offset(x: Profile ? -2000 : 0)
                    .animation(.spring())
                ProfilePage()
                    .offset(x: Profile ? 0 : 1000)
                    .animation(.spring())
            }
            VStack {
                TabBar(Home: $Home, Search: $Search, Profile: $Profile)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabBar: View {
    
    @Binding var Home: Bool
    @Binding var Search: Bool
    @Binding var Profile: Bool
    
    var body: some View {
        HStack {
            
            VStack {
                Image(systemName: "house")
            }
            .frame(width: 40, height: 40)
            .foregroundColor(Home ? .white : .gray)
            .foregroundColor(Search ? .gray : .white)
            .foregroundColor(Profile ? .gray : .white)
            .background(Home ? Color(#colorLiteral(red: 0.4392156863, green: 0.1450980392, blue: 0.9098039216, alpha: 1)) : Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .background(Search ? Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) : Color(#colorLiteral(red: 0.4392156863, green: 0.1450980392, blue: 0.9098039216, alpha: 1)))
            .background(Profile ? Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)) : Color(#colorLiteral(red: 0.4392156863, green: 0.1450980392, blue: 0.9098039216, alpha: 1)))
            .cornerRadius(20)
            
            .onAppear {
                self.Home.toggle()
            }
            
            .onTapGesture {
                self.Home.toggle()
                self.Search = false
                self.Profile = false
            }
            
            Spacer()
            
            VStack {
                Image(systemName: "magnifyingglass")
            }
            .frame(width: 40, height: 40)
            .foregroundColor(Search ? .white : .gray)
            .background(Search ? Color(#colorLiteral(red: 0.44001019, green: 0.1435490251, blue: 0.9111415148, alpha: 1)) : Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(20)
            
            .onTapGesture {
                self.Search.toggle()
                self.Home = false
                self.Profile = false
            }
            
            Spacer()
            
            VStack {
                Image(systemName: "person.fill")
            }
            .frame(width: 40, height: 40)
            .foregroundColor(Profile ? .white : .gray)
            .background(Profile ? Color(#colorLiteral(red: 0.44001019, green: 0.1435490251, blue: 0.9111415148, alpha: 1)) : Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .cornerRadius(20)
            
            .onTapGesture {
                self.Profile.toggle()
                self.Home = false
                self.Search = false
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal, 50)
        
    }
}
