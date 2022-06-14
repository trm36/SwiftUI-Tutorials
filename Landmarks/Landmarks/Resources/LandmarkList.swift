//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Taylor on 13 June 2022.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true
    
    /// Shows landmarks filtered based on `showFavoritesOnly`.
    var filteredLandmarks: [Landmark] {
        landmarks.filter { (!showFavoritesOnly || $0.isFavorite) }
    }
    
    var body: some View {
        NavigationView {
            List(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        
        let devices = [
            "iPhone SE (3rd generation)",
            "iPhone 13 Pro Max",
        ]
        
        ForEach(devices, id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
