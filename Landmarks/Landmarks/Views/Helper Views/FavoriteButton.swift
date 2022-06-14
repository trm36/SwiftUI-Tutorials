//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Taylor on 13 June 2022.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            let systemImageName = isSet ? "star.fill" : "star"
            let color: Color = isSet ? .yellow : .gray
            Label("Toggle Favorite", systemImage: systemImageName)
                .labelStyle(.iconOnly)
                .foregroundColor(color)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
