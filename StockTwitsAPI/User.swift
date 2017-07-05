//
//  User.swift
//  StockTwitsAPI
//
//  Created by Chris Kong on 7/4/17.
//  Copyright © 2017 Chris Kong. All rights reserved.
//

import Foundation

struct User: Decodable {
    let username: String?
    let name: String?
    let avatar_url: String?
}
