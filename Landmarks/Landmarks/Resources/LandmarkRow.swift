//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Taylor on 13 June 2022.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50.0, height: 50.0)
            
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .padding(.trailing, 4.0)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
                
            LandmarkRow(landmark: landmarks[1])
            
            LandmarkRow(landmark: landmarks[2])
        }
        .previewLayout(.fixed(width: 300.0, height: 70.0))
    }
}
