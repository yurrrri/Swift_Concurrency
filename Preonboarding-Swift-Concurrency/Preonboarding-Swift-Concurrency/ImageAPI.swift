//
//  ImageAPI.swift
//  Preonboarding-Swift-Concurrency
//
//  Created by 이유리 on 2023/03/05.
//

import Foundation

struct ImageAPI {
    
    func getRandomImageURLComponents(count: Int) -> URLComponents {

        var random = Int.random(in: 1...30)
        let url = "https://picsum.photos/v2/list?page=\(random)&limit=\(count)"
        var components = URLComponents(string: url)!

//        components.queryItems = [
//            URLQueryItem(name: "client_id", value: "ZxeZnBX1PFTJwI7bP1i-aEu6ZCD6oEp2sqnbYsHwU5c"),
//            URLQueryItem(name: "count", value: "\(count)")
//        ]
        
        return components
    }
}
