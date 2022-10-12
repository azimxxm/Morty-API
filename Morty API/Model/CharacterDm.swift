//
//  CharacterDM.swift
//  Morty API
//
//  Created by Azimjon on 11/10/22.
//

import Foundation
import SwiftyJSON

struct CharacterDM {
    var id:Int
    var name:String
    var status:String
    var species:String
    var type:String
    var gender:String
    var location:LocationDM
    var image:String
    var episode:EpisodeDM
    var url:String
    var created:String
    
    init(jsonData:JSON) {
        self.id = jsonData["id"].intValue
        self.name = jsonData["name"].stringValue
        self.status = jsonData["status"].stringValue
        self.species = jsonData["species"].stringValue
        self.type = jsonData["type"].stringValue
        self.gender = jsonData["gender"].stringValue
        self.location = LocationDM(jsonData: jsonData)
        self.image = jsonData["image"].stringValue
        self.episode = EpisodeDM(jsonData: jsonData)
        self.url = jsonData["url"].stringValue
        self.created = jsonData["created"].stringValue
    }
}




// https://rickandmortyapi.com/api/character/10
//  "id": 10,
//  "name": "Alan Rails",
//  "status": "Dead",
//  "species": "Human",
//  "type": "Superhuman (Ghost trains summoner)",
//  "gender": "Male",
//  "origin": {
//    "name": "unknown",
//    "url": ""
//  },
//  "location": {
//    "name": "Worldender's lair",
//    "url": "https://rickandmortyapi.com/api/location/4"
//  },
//  "image": "https://rickandmortyapi.com/api/character/avatar/10.jpeg",
//  "episode": [
//    "https://rickandmortyapi.com/api/episode/25"
//  ],
//  "url": "https://rickandmortyapi.com/api/character/10",
//  "created": "2017-11-04T20:19:09.017Z"
