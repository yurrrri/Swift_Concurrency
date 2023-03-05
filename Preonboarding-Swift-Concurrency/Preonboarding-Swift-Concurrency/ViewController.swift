//
//  ViewController.swift
//  Preonboarding-Swift-Concurrency
//
//  Created by 이유리 on 2023/03/04.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var api = ImageAPI()
    private let session = URLSession(configuration: .default)

    @IBOutlet weak var fifthImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var firstImageView: UIImageView!
    
    @IBAction func firstButton(_ sender: Any) {
        let url = api.getRandomImageURLComponents(count: 1).url
        var images = [RandomImageResponse]()
        
        session.dataTask(with: url!) { data, response, error in
            if let data = data {
                do{
                    let response = try JSONDecoder().decode([RandomImageResponse].self, from: data)
                    images.append(contentsOf: response)
                    
                    self.firstImageView.load(url: URL(string: images[0].download_url)!)
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
    
    @IBAction func secondButton(_ sender: Any) {
        let url = api.getRandomImageURLComponents(count: 1).url
        var images = [RandomImageResponse]()
        
        session.dataTask(with: url!) { data, response, error in
            if let data = data {
                do{
                    let response = try JSONDecoder().decode([RandomImageResponse].self, from: data)
                    images.append(contentsOf: response)
                    
                    self.secondImageView.load(url: URL(string: images[0].download_url)!)
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
    
    @IBAction func thirdButton(_ sender: Any) {
        let url = api.getRandomImageURLComponents(count: 1).url
        var images = [RandomImageResponse]()
        
        session.dataTask(with: url!) { data, response, error in
            if let data = data {
                do{
                    let response = try JSONDecoder().decode([RandomImageResponse].self, from: data)
                    images.append(contentsOf: response)
                    
                    self.thirdImageView.load(url: URL(string: images[0].download_url)!)
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
    
    @IBAction func fourthButton(_ sender: Any) {
        let url = api.getRandomImageURLComponents(count: 1).url
        var images = [RandomImageResponse]()
        
        session.dataTask(with: url!) { data, response, error in
            if let data = data {
                do{
                    let response = try JSONDecoder().decode([RandomImageResponse].self, from: data)
                    images.append(contentsOf: response)
                    
                    self.fourthImageView.load(url: URL(string: images[0].download_url)!)
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
    
    @IBAction func fifthButton(_ sender: Any) {
        let url = api.getRandomImageURLComponents(count: 1).url
        var images = [RandomImageResponse]()
        
        session.dataTask(with: url!) { data, response, error in
            if let data = data {
                do{
                    let response = try JSONDecoder().decode([RandomImageResponse].self, from: data)
                    images.append(contentsOf: response)
                    
                    self.fifthImageView.load(url: URL(string: images[0].download_url)!)
                } catch {
                    print(error)
                }
            }
        }.resume()
    }
    
    @IBAction func loadAllButton(_ sender: Any) {
        let url = api.getRandomImageURLComponents(count: 5).url
        var images = [RandomImageResponse]()
        
        session.dataTask(with: url!) { data, response, error in
            if let data = data {
                do{
                    let response = try JSONDecoder().decode([RandomImageResponse].self, from: data)
                    images.append(contentsOf: response)
                    
                    self.fifthImageView.load(url: URL(string: images[4].download_url)!)
                    self.fourthImageView.load(url: URL(string: images[3].download_url)!)
                    self.thirdImageView.load(url: URL(string: images[2].download_url)!)
                    self.secondImageView.load(url: URL(string: images[1].download_url)!)
                    self.firstImageView.load(url: URL(string: images[0].download_url)!)

                } catch {
                    print(error)
                }
            }
        }.resume()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

