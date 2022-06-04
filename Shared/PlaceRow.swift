//
//  PlaceRow.swift
//  ReastaurantPlace
//
//  Created by MacBook Pro on 03/06/22.
//

import SwiftUI

struct PlaceRow: View {
    var place: PlaceData
    
    var body: some View {
        HStack{
            place.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(place.name)
 
        }
    }
}

struct PlaceRow_Previews: PreviewProvider {
    static var previews: some View {
        PlaceRow(place: ModelData().placeData[0])
    }
}
