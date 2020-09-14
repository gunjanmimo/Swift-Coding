//
//  NewsData.swift
//  Newspedia
//
//  Created by Gunjan  Paul on 14/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import Foundation

struct NewsData: Codable {
    let articles: [article]
}
struct article: Codable{
    let source: [Source]
    let author:String
    let title:String
    let description:String
    let url:String
    let urlToImage:String
    let content:String
}

struct Source:Codable {
    let id:String
    let name:String
}
