//
//  PostData.swift
//  HAckerNews
//
//  Created by Gunjan  Paul on 18/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import Foundation

struct Result:Decodable {
    let hits: [Hits]
}

struct Hits:Decodable, Identifiable {
    var id: String{
        return objectID
    }
    let objectID:String
    let points:Int
    let title:String
    let url:String?
}
