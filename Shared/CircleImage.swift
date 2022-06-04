//
//  CircleImage.swift
//  ReastaurantPlace
//
//  Created by MacBook Pro on 02/06/22.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image.frame(width: 300, height: 300)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.black, lineWidth: 3)
                        }
        
                        .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("bugs"))
    }
}
