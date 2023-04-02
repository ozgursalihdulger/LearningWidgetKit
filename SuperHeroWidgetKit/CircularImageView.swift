//
//  CircularImageView.swift
//  SuperHeroWidgetKit
//
//  Created by Özgür Salih Dülger on 24.03.2023.
//

import SwiftUI

struct CircularImageView: View {
    let image : Image
    var body: some View {
        image.resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.green, lineWidth: 10)).shadow(radius: 200)
        
    }
}

struct CircularImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircularImageView(image: Image("spiderman"))
    }
}
