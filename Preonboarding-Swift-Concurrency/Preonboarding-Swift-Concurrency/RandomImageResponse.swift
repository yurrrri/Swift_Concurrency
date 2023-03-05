//
//  RandomImageResponse.swift
//  Preonboarding-Swift-Concurrency
//
//  Created by 이유리 on 2023/03/05.
//

import Foundation

// MARK: - RandomImageResponseElement
struct RandomImageResponse: Decodable {
    var id, author: String
    var width, height: Int
    var url, download_url: String
}
