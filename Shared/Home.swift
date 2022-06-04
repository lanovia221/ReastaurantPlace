//
//  Home.swift
//  ReastaurantPlace
//
//  Created by MacBook Pro on 03/06/22.
//

import SwiftUI

struct Home: View {
    
    @EnvironmentObject var modelData: ModelData
    var place: [PlaceData]{
        modelData.placeData
    }

    var body: some View {
        VStack {
            ForEach (place, id: \.self) {pla in
                Text(pla.name)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().environmentObject(ModelData())
    }
}
