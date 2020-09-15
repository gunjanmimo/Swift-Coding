//
//  News.swift
//  Newspedia
//
//  Created by Gunjan  Paul on 15/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import Foundation

class News {
    let imgURL:URL
    let heading: String
    let content:String
    init(imgURL:URL, heading:String, content:String) {
        self.imgURL = imgURL
        self.heading = heading
        self.content = content
    }
}
