//
//  CircleImage.swift
//  Landmarks
//
//  Created by Taylor on 13 June 2022.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4.0)
            }
            .shadow(radius: 7.0)
        
            
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
