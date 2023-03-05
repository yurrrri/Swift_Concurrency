//
//  UIImageView+.swift
//  Preonboarding-Swift-Concurrency
//
//  Created by 이유리 on 2023/03/06.
//

import Foundation
import UIKit

extension UIImageView {
        
    func load(url: URL){
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                self.image = UIImage(systemName: "photo")
            }
            if let data = data {
                DispatchQueue.main.async {
                    self.image = UIImage(data: data)
                }
            } else {
                self.image = UIImage(systemName: "photo")
            }
        }.resume()
    }
}
