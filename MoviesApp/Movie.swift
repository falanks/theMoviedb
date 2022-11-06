//
//  Movie.swift
//  MoviesApp
//
//  Created by Muhammed Sağlam on 28.10.2022.
//

import Foundation

struct Movie: Decodable {
    let title: String
    let categories: [String]
    let duration: String
    let rating: Double
    let summary: String
    let imageName: String
    
    var imageSmall: String {
        return imageName + "-small.jpg"
    }
    
    var imageWide: String {
        return imageName + "-wide.jpg"
    }
    
    var categoriesDescription: String {
        return categories.joined(separator: " | ")
    }
    
    enum CodingKeys: String, CodingKey {
        case title
        case categories
        case duration
        case rating
        case summary
        case imageName = "image_name"
    }
}
