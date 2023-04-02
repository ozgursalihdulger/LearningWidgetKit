//
//  SuperHeros.swift
//  SuperHeroWidgetKit
//
//  Created by Özgür Salih Dülger on 24.03.2023.
//

import Foundation


struct SuperHeros : Identifiable, Codable {
    let image : String
    let name : String
    let realName : String
    
    var id : String {image}
}

let spiderman = SuperHeros(image: "spiderman", name: "Spiderman", realName: "Peter Benjamin Parker")
let hulk = SuperHeros(image: "hulk", name: "Hulk", realName: "Robert Bruce Banner")
let batman = SuperHeros(image: "batman", name: "Batman", realName: "Bruce Wayne")
