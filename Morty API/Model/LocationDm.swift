//
//  LocationDM.swift
//  Morty API
//
//  Created by Azimjon on 11/10/22.
//

import Foundation
import SwiftyJSON


struct LocationDM {
    var id:Int
    var name:String
    var type:String
    var dimension:String
    var residents:[String]
    var url:String
    var created:String
    
    init(jsonData:JSON) {
        self.id = jsonData["id"].intValue
        self.name = jsonData["name"].stringValue
        self.type = jsonData["type"].stringValue
        self.dimension = jsonData["dimension"].stringValue
        self.residents = jsonData["residents"].arrayValue.compactMap{ $0.stringValue }
        self.url = jsonData["url"].stringValue
        self.created = jsonData["created"].stringValue
    }
}


// https://rickandmortyapi.com/api/location/4
//{
//  "id": 4,
//  "name": "Worldender's lair",
//  "type": "Planet",
//  "dimension": "unknown",
//  "residents": [
//    "https://rickandmortyapi.com/api/character/10",
//    "https://rickandmortyapi.com/api/character/81",
//    "https://rickandmortyapi.com/api/character/208",
//    "https://rickandmortyapi.com/api/character/226",
//    "https://rickandmortyapi.com/api/character/340",
//    "https://rickandmortyapi.com/api/character/362",
//    "https://rickandmortyapi.com/api/character/375",
//    "https://rickandmortyapi.com/api/character/382",
//    "https://rickandmortyapi.com/api/character/395"
//  ],
//  "url": "https://rickandmortyapi.com/api/location/4",
//  "created": "2017-11-10T13:08:20.569Z"
//}
