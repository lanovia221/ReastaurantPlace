//
//  Profile.swift
//  ReastaurantPlace
//
//  Created by MacBook Pro on 02/06/22.
//

import SwiftUI

struct DetailPlace: View {
    var place: PlaceData
    
    var body: some View {
        ScrollView{
            VStack {
                MapView(coordinate: place.locationCoordinate)
                           .frame(height: 300)
                
                CircleImage(image: place.image).offset(y: -130)
                    .padding(.bottom, -130)


                       VStack(alignment: .leading) {
                           Text(place.name)
                               .font(.title)

                           HStack {
                               Text(place.park)
                                   .font(.subheadline)
                               Spacer()
                               Text(place.state)
                           }
                           .font(.subheadline)
                           .foregroundColor(.secondary)
                       }.padding()
                VStack{
                    Text(place.description)
                }
                .padding()
    }
        }

    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        DetailPlace(place: ModelData().placeData[0])
    }
}
