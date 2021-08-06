//
//  Event.swift
//  PetTracker
//
//  Created by Marcus Allen on 8/1/21.
//

import Foundation

struct Event: Hashable, Codable, Identifiable {
    var id: Int
    var pet: String
    var type: String
    var name: String
    var date: String
    var time: String
    var isFavorite: Bool
    var isMedical: Bool
    var isAbnormal: Bool
    var caretaker: String
    var imageName: String
    
//    var hashtags: String
    
//    var details: [String]
//    var tags: [String]
    
//    struct Coordinates: Hashable, Codable {
//        var latitude: Double
//        var longitude: Double
//    }
}
