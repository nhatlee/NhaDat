//
//  News.swift
//  App
//
//  Created by nhatle on 3/3/19.
//

import Vapor
import FluentPostgreSQL


//enum NewsType: Content {
//    case SaleLand
//}

final class News: Content {
    var id: UUID?
    var title: String
    var content: String
    var imageUrls: [String]
    var phone: String
    init(title: String, content: String, imageUrls: [String], phone: String) {
        self.title = title
        self.content = content
        self.imageUrls = imageUrls
        self.phone = phone
    }
}


extension News: PostgreSQLUUIDModel {}
extension News: Migration {}
