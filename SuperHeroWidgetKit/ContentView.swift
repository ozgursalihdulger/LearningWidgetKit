//
//  ContentView.swift
//  SuperHeroWidgetKit
//
//  Created by Özgür Salih Dülger on 24.03.2023.
//

import SwiftUI
import WidgetKit

let superHerosArray = [batman,hulk,spiderman]

struct ContentView: View {
    
    @AppStorage("hero", store: UserDefaults(suiteName: "group.com.ozgursalihdulger.SuperHeroWidgetKit"))
    var heroData : Data = Data()
    
    var body: some View {
        VStack {
            ForEach(superHerosArray) { hero in
                _HeroView(hero: hero).onTapGesture {
                    saveToDefaults(hero: hero)
                }
            }
            
        }
        
    }
    
    func saveToDefaults (hero : SuperHeros) {
        
        if let heroDatas = try? JSONEncoder().encode(hero) {
            self.heroData = heroDatas
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetHero")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
