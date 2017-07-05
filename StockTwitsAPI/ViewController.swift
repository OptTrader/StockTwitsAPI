//
//  ViewController.swift
//  StockTwitsAPI
//
//  Created by Chris Kong on 7/4/17.
//  Copyright © 2017 Chris Kong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonUrlString = "https://api.stocktwits.com/api/2/streams/symbol/TSLA.json"
        
        guard let url = URL(string: jsonUrlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            // check for err
            // check response status 200 OK
            
            guard let data = data else { return }
            
            do {
                let output = try JSONDecoder().decode(StockTwits.self, from: data)
                print(output)
                
            } catch let jsonErr {
                print("Error serializing json:", jsonErr)
            }
        }.resume()
    }
    


}

