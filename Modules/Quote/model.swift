//
//  model.swift
//  GlobalStudy
//
//  Created by Toinou on 01/05/2022.
//

import Foundation

struct Quote: Codable {
    var quote: String
    var author: String

    var shareMessage: String {
        return "\"\(quote)\" — \(author)"
    }
}
