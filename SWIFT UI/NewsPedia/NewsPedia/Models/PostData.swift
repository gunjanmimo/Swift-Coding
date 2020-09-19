//
//  PostData.swift
//  NewsPedia
//
//  Created by Gunjan  Paul on 19/09/20.
//  Copyright © 2020 Gunjan  Paul. All rights reserved.
//

import Foundation

// MARK: - Welcome
struct Result: Codable {
    let status: String
    let totalResults: Int
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable,Identifiable {
    var id:String{
        if source.id == nil{
            return "ABCD"
        }
        else{
            return source.id!
        }
    }
    
    let source: Source
    let author: String?
    let title, articleDescription: String
    let url: String
    let urlToImage: String?
    let publishedAt: String?
    let content: String
    
    enum CodingKeys: String, CodingKey {
        case source, author, title
        case articleDescription = "description"
        case url, urlToImage, publishedAt, content
    }
}

// MARK: - Source
struct Source: Codable {
    let id: String?
    let name: String
}

