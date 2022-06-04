//
//  ContentView.swift
//  Shared
//
//  Created by MacBook Pro on 02/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        TabView{
            DetailPlace(place: ModelData().placeData[0])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
