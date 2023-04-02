//
//   HeroView.swift
//  SuperHeroWidgetKit
//
//  Created by Özgür Salih Dülger on 24.03.2023.
//

import SwiftUI

struct _HeroView: View {
    
    let hero : SuperHeros
    
    
    var body: some View {
        HStack {
            CircularImageView(image: Image(hero.image)).frame(width: 100, height: 100, alignment: .center).padding()
            Spacer()
            
            VStack {
                Text(hero.name).font(.largeTitle).fontWeight(.heavy).foregroundColor(.green)
                Text(hero.realName).font(.caption).fontWeight(.bold).foregroundColor(.blue)
            }
             Spacer()
        }.frame(width: UIScreen.main.bounds.width, alignment: .center)
    
    }
}

struct _HeroView_Previews: PreviewProvider {
    static var previews: some View {
        _HeroView(hero: spiderman)
    }
}
