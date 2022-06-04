//
//  List.swift
//  ReastaurantPlace
//
//  Created by MacBook Pro on 03/06/22.
//

import SwiftUI


struct ListPlace: View {
    var body: some View {
        NavigationView{
            List(ModelData().placeData){ place in
                NavigationLink{
                    DetailPlace(place: place)
                }label:{
                    PlaceRow(place: place)
                }
            }
            .navigationTitle("Landmarks")
        }

    }
}

struct List_Previews: PreviewProvider {
    static var previews: some View {
        ListPlace()
    }
    
}
