//
//  Home.swift
//  login
//
//  Created by user216710 on 3/27/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View{
        NavigationView{
            ZStack{
                Text("Home")
                
                Spacer()
            }
            .navigationTitle("Home")
            //.navigationBarHidden(true)
            
        }
    }
}

struct Logout: View {
    var body: some View{
        NavigationView{
            ZStack{
                Text("Logout")
                
                Spacer()
            }
            .navigationTitle("Logout")
            //.navigationBarHidden(true)
            
        }
    }
}

struct Home: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Logout()
                .tabItem{
                    
                    Image(systemName: "gear")
                    Text("Logout")
                }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
