//
//  Creature.swift
//  CatchEmAll
//
//  Created by TheForce on 10/2/24.
//

import Foundation

struct Creature: Codable, Identifiable {
    let id = UUID().uuidString
    var name: String
    var url: String // url for detail pokemon
    
    enum CodingKeys: CodingKey {
        case name
        case url
    }
    
}
