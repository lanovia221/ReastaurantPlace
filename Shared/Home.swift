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
    
    @State var isExpand = false

    var body: some View {
        ScrollView(.vertical, showsIndicators: true){
            VStack (spacing: 0){
                Text("Saturday, May 2")
                    .foregroundColor(Color(UIColor.systemGray))
                
                HStack{
                    Text("Today")
                        .font(.system(.title))
                        .fontWeight(.semibold)
                    Spacer()
                    Image("anomali")
                        .resizable()
                        .frame(width: 35, height: 35)
                }
                .padding()
                
                VStack{
                    ForEach(place, id: \.self) { place in
                        ExpandView(isExpand: $isExpand, data: ModelData().placeData[0])
                            .frame(height: Screen.height * 0.45)
                            .frame(maxWidth: self.isExpand ? Screen.width : Screen.width * 0.9)
                    }
                }
                
               
                    
    //            ForEach (place, id: \.self) {pla in
    //                Text(pla.name)
    //            }
                
            }
        }

    }
    
    struct ExpandView : View {
        @Binding var isExpand : Bool
        
        var data : PlaceData
        
        var body: some View {
            ZStack(alignment: .top){
                
            Image("bugs")
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(radius: 5)
                .frame(height: Screen.height * 0.45)
                .onTapGesture {
                    self.isExpand.toggle()
                }
                
            //title section
            HStack{
                VStack(alignment: .leading, spacing: 0){
                    Text(data.name)
                        .foregroundColor(Color(UIColor.systemGray)).fontWeight(.semibold)

                    Text(data.park)
                        .font(.system(.title))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                Spacer()

            }.padding()
            
        }//Zstack
            .frame(height: self.isExpand ? Screen.height: Screen.height * 0.45)
            .animation(.spring(response: 0.6, dampingFraction: 0.8, blendDuration: 0.6))
            .edgesIgnoringSafeArea(.all)
        }
        
//https://www.youtube.com/watch?v=o31ZzGuW-1M
        

        
    }
    
    //Get screen sixe
    struct Screen {
        static let height = UIScreen.main.bounds.height
        static let width = UIScreen.main.bounds.width
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home().environmentObject(ModelData())
    }
}
