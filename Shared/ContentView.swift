//
//  ContentView.swift
//  Shared
//
//  Created by MacBook Pro on 02/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            
            Text("Home").tabItem {
                Image(systemName: "house")
                Text("Home")
            }
//            Home()
//                .tabItem{
//                    Image(systemName: "house")
//                    Text("Home")
//                }
//
            ListPlace()
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("List")
        }
            
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
