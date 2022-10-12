//
//  EpisodeDM.swift
//  Morty API
//
//  Created by Azimjon on 11/10/22.
//

import Foundation
import SwiftyJSON


struct EpisodeDM {
    var id:Int
    var name:String
    var air_date:String
    var episode:String
    var characters:[String]
    var url:String
    var created:String
    
    init(jsonData:JSON) {
        self.id = jsonData["id"].intValue
        self.name = jsonData["name"].stringValue
        self.air_date = jsonData["air_date"].stringValue
        self.episode = jsonData["episode"].stringValue
        self.characters = jsonData["characters"].arrayValue.compactMap{ $0.stringValue }
        self.url = jsonData["url"].stringValue
        self.created = jsonData["created"].stringValue
    }
}



// https://rickandmortyapi.com/api/episode/25
//
//{
//  "id": 25,
//  "name": "Vindicators 3: The Return of Worldender",
//  "air_date": "August 13, 2017",
//  "episode": "S03E04",
//  "characters": [
//    "https://rickandmortyapi.com/api/character/1",
//    "https://rickandmortyapi.com/api/character/2",
//    "https://rickandmortyapi.com/api/character/3",
//    "https://rickandmortyapi.com/api/character/4",
//    "https://rickandmortyapi.com/api/character/10",
//    "https://rickandmortyapi.com/api/character/23",
//    "https://rickandmortyapi.com/api/character/35",
//    "https://rickandmortyapi.com/api/character/60",
//    "https://rickandmortyapi.com/api/character/81",
//    "https://rickandmortyapi.com/api/character/88",
//    "https://rickandmortyapi.com/api/character/93",
//    "https://rickandmortyapi.com/api/character/104",
//    "https://rickandmortyapi.com/api/character/125",
//    "https://rickandmortyapi.com/api/character/181",
//    "https://rickandmortyapi.com/api/character/198",
//    "https://rickandmortyapi.com/api/character/208",
//    "https://rickandmortyapi.com/api/character/216",
//    "https://rickandmortyapi.com/api/character/226",
//    "https://rickandmortyapi.com/api/character/251",
//    "https://rickandmortyapi.com/api/character/252",
//    "https://rickandmortyapi.com/api/character/282",
//    "https://rickandmortyapi.com/api/character/309",
//    "https://rickandmortyapi.com/api/character/311",
//    "https://rickandmortyapi.com/api/character/333",
//    "https://rickandmortyapi.com/api/character/340",
//    "https://rickandmortyapi.com/api/character/362",
//    "https://rickandmortyapi.com/api/character/375",
//    "https://rickandmortyapi.com/api/character/382",
//    "https://rickandmortyapi.com/api/character/395",
//    "https://rickandmortyapi.com/api/character/435"
//  ],
//  "url": "https://rickandmortyapi.com/api/episode/25",
//  "created": "2017-11-10T12:56:36.310Z"
//}
